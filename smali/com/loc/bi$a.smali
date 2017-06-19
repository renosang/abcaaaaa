.class public Lcom/loc/bi$a;
.super Ljava/lang/Object;
.source "BinaryRandomAccessFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/loc/bi$a;->a:Z

    .line 21
    iput-boolean v0, p0, Lcom/loc/bi$a;->b:Z

    return-void
.end method
