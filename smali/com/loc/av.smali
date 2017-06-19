.class Lcom/loc/av;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "av"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ar;


# direct methods
.method constructor <init>(Lcom/loc/ar;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/loc/av;->a:Lcom/loc/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .prologue
    .line 607
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    const-string/jumbo v1, "*.amap.com"

    .line 609
    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
