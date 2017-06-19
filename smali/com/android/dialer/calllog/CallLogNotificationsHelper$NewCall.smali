.class public final Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewCall"
.end annotation


# instance fields
.field public final accountComponentName:Ljava/lang/String;

.field public final accountId:Ljava/lang/String;

.field public final callsUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final dateMs:J

.field public final number:Ljava/lang/String;

.field public final numberPresentation:I

.field public final transcription:Ljava/lang/String;

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "callsUri"    # Landroid/net/Uri;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "numberPresentation"    # I
    .param p5, "accountComponentName"    # Ljava/lang/String;
    .param p6, "accountId"    # Ljava/lang/String;
    .param p7, "transcription"    # Ljava/lang/String;
    .param p8, "countryIso"    # Ljava/lang/String;
    .param p9, "dateMs"    # J

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 193
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 194
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    .line 195
    iput p4, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->numberPresentation:I

    .line 196
    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountComponentName:Ljava/lang/String;

    .line 197
    iput-object p6, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountId:Ljava/lang/String;

    .line 198
    iput-object p7, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->transcription:Ljava/lang/String;

    .line 199
    iput-object p8, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->countryIso:Ljava/lang/String;

    .line 200
    iput-wide p9, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->dateMs:J

    .line 191
    return-void
.end method
