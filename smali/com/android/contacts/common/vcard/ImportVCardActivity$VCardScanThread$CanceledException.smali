.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
.super Ljava/lang/Exception;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V

    return-void
.end method
