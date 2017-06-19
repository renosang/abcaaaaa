.class public final Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
.super Ljava/lang/Object;
.source "IndexerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/IndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field public lastInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I

    .line 41
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I

    .line 47
    return-void
.end method
