/**
 * DemoController
 *
 * @description :: Server-side logic for managing demoes
 * @help        :: See http://links.sailsjs.org/docs/controllers
 */

module.exports = {



  /**
   * `DemoController.show()`
   */
  show: function (req, res) {
    /*return res.json({
      todo: 'show() is not implemented yet!'
    });*/
    return res.view('demo/show', {
      firstName: 'Artem'
    });
  }
};

