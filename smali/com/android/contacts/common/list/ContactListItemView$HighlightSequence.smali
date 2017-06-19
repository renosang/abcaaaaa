.class public Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
.super Ljava/lang/Object;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HighlightSequence"
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I

    return v0
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I

    .line 127
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I

    .line 125
    return-void
.end method
