.class Lcom/android/incallui/CallCardPresenter$2;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;->updateEmergencyLocation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;

.field final synthetic val$ui:Lcom/android/incallui/CallCardPresenter$CallCardUi;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardPresenter;
    .param p2, "val$ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter$2;->val$ui:Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->val$ui:Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setLocation(Ljava/lang/String;)V

    .line 1509
    :goto_0
    return-void

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->val$ui:Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setLocation(Ljava/lang/String;)V

    goto :goto_0
.end method
