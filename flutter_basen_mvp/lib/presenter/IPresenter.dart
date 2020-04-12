import 'package:flutterbasenmvp/view/IView.dart';

abstract class IPresenter<V extends IView>{
  ///Set or attach the view to this mPresenter
  void attachView(V view);

  ///Will be called if the view has been destroyed . Typically this method will be invoked from
  void detachView();
}