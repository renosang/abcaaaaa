.class Lcom/android/incallui/InCallPresenter$2;
.super Landroid/telephony/PhoneStateListener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->-get6(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2, p2, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_1
    return-void
.end method
