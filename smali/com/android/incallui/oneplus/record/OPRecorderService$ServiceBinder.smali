.class public Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;
.super Landroid/os/Binder;
.source "OPRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/record/OPRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/record/OPRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/oneplus/record/OPRecorderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/record/OPRecorderService;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;->this$0:Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/incallui/oneplus/record/OPRecorderService;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;->this$0:Lcom/android/incallui/oneplus/record/OPRecorderService;

    return-object v0
.end method
