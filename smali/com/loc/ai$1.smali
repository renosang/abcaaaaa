.class Lcom/loc/ai$1;
.super Ljava/lang/Thread;
.source "DynamicClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ai;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/loc/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/loc/ai$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/ai$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ai$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/loc/ai;->b()Lcom/loc/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ai$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ai$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ai$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ai;->a(Lcom/loc/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
