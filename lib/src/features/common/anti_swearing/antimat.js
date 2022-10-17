/* eslint-disable */

/**
 * @based https://github.com/itlessons/js-antimat
 */

import {letters} from './antimatData/letters';
import {badPatterns} from './antimatData/badPatterns';
import {goodPatterns} from './antimatData/goodPatterns';

// import {badWords} from './antimatData/badWords';
// import {goodWords} from './antimatData/goodWords';

/**
	1. вся фраза бьется на слова по пробелам
	2. каждое слово приводиться к русскому языку
	3. потом заменяются все символы из автокорректора из админки
	4. убираются badsymbols, которые остались
	5. потом каждое слово проверяется на наличие в блэк листе (точное) и отсутствие в white-list
*/

class Antimat {
	constructor() {
		this.badWords = [];
		this.goodWords = [];
		this.badSites = [];
		this.phrases = [];
		this.autocorrect = [];
	}

	setData(data) {
		const {black, white, site, phrase, autocorrect} = data;
		this.badWords = black !== '' ? black.split(', ') : null;
		this.goodWords = white !== '' ? white.split(', ') : null;
		this.badSites = site !== '' ? site.split(', ') : null;
		this.phrases = phrase !== '' ? phrase.split(', ') : null;
		this.autocorrect = autocorrect;
	}

	containsMat(incomingText) {
		const text = incomingText.toLowerCase();
		const words = text.split(' ');

		for (let i = 0; i < words.length; i++) {
			const convertWord = this.convertEngToRus(words[i]);
			const replaceWord = this.replaceLetters(convertWord);
			const cleanWord = this.cleanBadSymbols(replaceWord);
			const cleanNativeWord = this.cleanBadSymbols(words[i]);

			if (this.isInGoodWords(cleanNativeWord) || this.isInGoodPatterns(cleanNativeWord)) {
				return false;
			}

			if (this.isInBadWords(cleanWord) || this.isInBadPatterns(cleanWord)) {
				return true;
			}
		}

		if (this.containsMatInSpaceWords(words)) {
			return true;
		}

		if (this.containsBadPhrases(text)) {
			return true;
		}

		if (this.containsBadSites(text)) {
			return true;
		}

		return false;
	}

	convertEngToRus(word) {
		const {rus, eng} = letters;
		const rusArr = rus.split(/ +/g);
		const engArr = eng.split(/ +/g);
		for (let i = 0; i < rusArr.length; i++) {
			word = word.toLowerCase().split(engArr[i]).join(rusArr[i]);
		}
		return word;
	}

	replaceLetters(word) {
		if (this.autocorrect.length) {
			for (let i = 0; i < this.autocorrect.length; i++) {
				word = word.toLowerCase().split(this.autocorrect[i].from).join(this.autocorrect[i].to);
			}
			return word;
		}
		return word;
	}

	cleanBadSymbols(text) {
		return text.replace(/[^a-zA-Zа-яА-Яё0-9\'\`\s]/g, '').replace(/\n/g, '');
	}

	isInGoodWords(word) {
		if (this.goodWords?.length) {
			for (let i = 0; i < this.goodWords.length; i++) {
				if (word.includes(this.goodWords[i])) return true;
			}
		}
		return false;
	}

	isInGoodPatterns(word) {
		if (goodPatterns.length) {
			for (let i = 0; i < goodPatterns.length; i++) {
				const pattern = new RegExp(goodPatterns[i]);
				if (pattern.test(word)) return true;
			}
		}
		return false;
	}

	isInBadWords(word) {
		if (this.badWords?.length) {
			for (let i = 0; i < this.badWords.length; i++) {
				if (word === this.badWords[i]) return true;
			}
		}
		return false;
	}

	isInBadPatterns(word) {
		for (let i = 0; i < badPatterns.length; i++) {
			const pattern = new RegExp(badPatterns[i]);
			if (pattern.test(word)) return true;
		}
		return false;
	}

	containsBadPhrases(text) {
		if (!this.phrases) {
			return false;
		}

		for (let i = 0; i < this.phrases.length; i++) {
			if (text.toLowerCase().includes(this.phrases[i].toLowerCase())) {
				return true;
			}
		}

		return false;
	}

	containsBadSites(text) {
		if (!this.badSites) {
			return false;
		}

		for (let i = 0; i < this.badSites.length; i++) {
			if (text.toLowerCase().includes(this.badSites[i].toLowerCase())) {
				return true;
			}
		}

		return false;
	}

	containsMatInSpaceWords(words) {
		const spaceWords = this.findSpaceWords(words);
		for (let i = 0; i < spaceWords.length; i++) {
			const word = this.convertEngToRus(spaceWords[i]);
			if (this.isInBadPatterns(word)) return true;
		}
		return false;
	}

	findSpaceWords(words) {
		let out = [];
		let spaceWord = '';
		for (var i = 0; i < words.length; i++) {
			const replaceWord = this.replaceLetters(words[i]);
			const word = this.cleanBadSymbols(replaceWord);
			if (word.length <= 3) {
				spaceWord += word;
			}
			if (spaceWord.length >= 3) {
				out.push(spaceWord);
				spaceWord = '';
			}
		}
		return out;
	}
}

export default new Antimat();
