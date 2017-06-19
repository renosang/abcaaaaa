.class public Lcom/android/dialer/calllog/SpinnerContent;
.super Ljava/lang/Object;
.source "SpinnerContent.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final label:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "SpinnerContent"

    sput-object v0, Lcom/android/dialer/calllog/SpinnerContent;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/dialer/calllog/SpinnerContent;->value:I

    .line 61
    iput-object p2, p0, Lcom/android/dialer/calllog/SpinnerContent;->label:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static setSpinnerContentValue(Landroid/widget/Spinner;I)V
    .locals 6
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # I

    .prologue
    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/calllog/SpinnerContent;

    .line 51
    .local v2, "sc":Lcom/android/dialer/calllog/SpinnerContent;
    iget v3, v2, Lcom/android/dialer/calllog/SpinnerContent;->value:I

    if-ne v3, p1, :cond_0

    .line 52
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 53
    sget-object v3, Lcom/android/dialer/calllog/SpinnerContent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set selection for spinner("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") with the value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "sc":Lcom/android/dialer/calllog/SpinnerContent;
    :cond_1
    return-void
.end method

.method public static setupStatusFilterContent(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/SpinnerContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v2, 0x4

    .line 98
    .local v2, "statusCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/calllog/SpinnerContent;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    :goto_0
    const/4 v5, 0x4

    .line 99
    if-ge v0, v5, :cond_0

    .line 100
    const/4 v3, -0x1

    .line 101
    .local v3, "value":I
    const/4 v1, 0x0

    .line 102
    .local v1, "label":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 120
    .end local v1    # "label":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/android/dialer/calllog/SpinnerContent;

    invoke-direct {v5, v3, v1}, Lcom/android/dialer/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .restart local v1    # "label":Ljava/lang/String;
    :pswitch_0
    const/4 v3, -0x1

    .line 105
    const v5, 0x7f0d0312

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 108
    .local v1, "label":Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    .line 109
    const v5, 0x7f0d0232

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 112
    .local v1, "label":Ljava/lang/String;
    :pswitch_2
    const/4 v3, 0x2

    .line 113
    const v5, 0x7f0d0233

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 116
    .local v1, "label":Ljava/lang/String;
    :pswitch_3
    const/4 v3, 0x3

    .line 117
    const v5, 0x7f0d0234

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_0
    return-object v4

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setupSubFilterContent(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/SpinnerContent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 74
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 75
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 77
    .local v0, "count":I
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/calllog/SpinnerContent;>;"
    new-instance v6, Lcom/android/dialer/calllog/SpinnerContent;

    .line 79
    const v7, 0x7f0d0311

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-direct {v6, v8, v7}, Lcom/android/dialer/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {p0}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "mPhoneAccountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 84
    invoke-static {p0, v6}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "subDisplayName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "Unknown"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 87
    new-instance v6, Lcom/android/dialer/calllog/SpinnerContent;

    invoke-direct {v6, v1, v3}, Lcom/android/dialer/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "subDisplayName":Ljava/lang/String;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dialer/calllog/SpinnerContent;->label:Ljava/lang/String;

    return-object v0
.end method
