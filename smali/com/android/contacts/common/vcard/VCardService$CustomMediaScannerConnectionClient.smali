.class Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "VCardService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMediaScannerConnectionClient"
.end annotation


# instance fields
.field final mConnection:Landroid/media/MediaScannerConnection;

.field final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    .line 77
    iput-object p2, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v0, p0}, Lcom/android/contacts/common/vcard/VCardService;->-wrap0(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    .line 91
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 80
    return-void
.end method
