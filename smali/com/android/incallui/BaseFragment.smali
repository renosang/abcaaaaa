.class public abstract Lcom/android/incallui/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/Presenter",
        "<TU;>;U::",
        "Lcom/android/incallui/Ui;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->createPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract createPresenter()Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/android/incallui/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    return-object v0
.end method

.method public abstract getUi()Lcom/android/incallui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    check-cast p1, Lcom/android/incallui/FragmentDisplayManager;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1, p0}, Lcom/android/incallui/FragmentDisplayManager;->onFragmentAttached(Landroid/app/Fragment;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 68
    :cond_0
    const-string/jumbo v0, "key_fragment_hidden"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 78
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiDestroy(Lcom/android/incallui/Ui;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    .local p0, "this":Lcom/android/incallui/BaseFragment;, "Lcom/android/incallui/BaseFragment<TT;TU;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    :cond_0
    const-string/jumbo v0, "key_fragment_hidden"

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method
