.class public interface abstract Lcom/oneplus/simcontacts/framework/provider/SimContactContract$ValidSim;
.super Ljava/lang/Object;
.source "SimContactContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/simcontacts/framework/provider/SimContactContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValidSim"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/oneplus/simcontacts/framework/provider/SimContactContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "valid_sim"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/simcontacts/framework/provider/SimContactContract$ValidSim;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method
