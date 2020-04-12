import 'package:flutterbasenmvp/model/IModel.dart';
import 'package:flutterbasenmvp/presenter/IPresenter.dart';
import 'package:flutterbasenmvp/view/IView.dart';

abstract class AbstractPresenter<V extends IView, M extends IModel>
    implements IPresenter {
  M _model;
  V _view;

  @override
  void attachView(IView view) {
    this._model = createModel();
    this._view = view;
  }

  @override
  void detachView() {
    if (_view != null) {
      _view = null;
    }
    if (_model != null) {
      _model.dispose();
      _model = null;
    }
  }

  V get view {
    return _view;
  }

//  V get view => _view;

  M get model => _model;

  IModel createModel();
}
