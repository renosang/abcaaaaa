.class public Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
.super Ljava/lang/Object;
.source "OPYuloreLoadInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YuloreInfo"
.end annotation


# instance fields
.field public flag:Ljava/lang/String;

.field public highRisk:Z

.field public id:Ljava/lang/String;

.field public local:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public numberDesc:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;


# direct methods
.method public constructor <init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "numberDesc"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->numberDesc:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "local"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->local:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "flag"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->flag:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "logo"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->logo:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "highRisk"

    iget-boolean v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->highRisk:Z

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
