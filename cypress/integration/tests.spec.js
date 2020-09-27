context('Altcoin_screener_tests', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/')
  })

  describe('loads website and all components', () => {
    it('title is correct', () => {
      cy.get('title').should('contain', 'Altcoin Screener (alpha)');
    })

    it('exhange dropdown button contains text, logo and icon', () => {
      // wait for loading page
      cy.wait(2000);
      cy.get('.ant-btn.ant-dropdown-trigger')
        .should('contain', 'Binance')
        .find('span.anticon.anticon-down')
        .should('not.be.undefined')
        .parent()
        .find('img')
        .should('not.be.undefined');
    })
  })
})

