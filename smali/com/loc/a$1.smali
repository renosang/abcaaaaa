.class Lcom/loc/a$1;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/loc/a$1;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/loc/a$1;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->f(Lcom/loc/a;)V

    .line 773
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 774
    return-void
.end method
