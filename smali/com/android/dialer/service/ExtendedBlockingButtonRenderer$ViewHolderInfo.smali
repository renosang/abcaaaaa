.class public final Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;
.super Ljava/lang/Object;
.source "ExtendedBlockingButtonRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolderInfo"
.end annotation


# instance fields
.field public final blockedNumberViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final completeListItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final countryIso:Ljava/lang/String;

.field public final displayNumber:Ljava/lang/String;

.field public final extendedBlockedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final nameOrNumber:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "countryIso"    # Ljava/lang/String;
    .param p6, "nameOrNumber"    # Ljava/lang/String;
    .param p7, "displayNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "completeListItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "extendedBlockedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "blockedNumberViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->completeListItemViews:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->extendedBlockedViews:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->blockedNumberViews:Ljava/util/List;

    .line 57
    iput-object p4, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->phoneNumber:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->countryIso:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->nameOrNumber:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;->displayNumber:Ljava/lang/String;

    .line 52
    return-void
.end method
