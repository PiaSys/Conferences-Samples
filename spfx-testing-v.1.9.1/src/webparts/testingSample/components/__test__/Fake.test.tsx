/// <reference types="jest" />

describe('Fake: just a test', () => {

    it('Test something', () => {
        const result: number = 5 + 2;
        // check the result
        expect(result).toBe(7);
    });
});