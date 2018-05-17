import {expect} from "chai";

describe("GitHub.com", () => {

    it("load my profile page", () => {
        browser.url("https://github.com/serbanghita");
        browser.waitForVisible(".vcard-fullname");
        const pageTitle = browser.getTitle();
        const fullName = browser.getText(".vcard-fullname");

        expect(pageTitle).to.equal("serbanghita (Şerban Ghiţă) · GitHub");
        expect(fullName).to.equal("Şerban Ghiţă");
    });

});