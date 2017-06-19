.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterEntry"
.end annotation


# instance fields
.field public final mChoiceResourceId:I

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mSubscriptionId:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "resId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    .line 1083
    iput p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    .line 1084
    iput p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mSubscriptionId:I

    .line 1081
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 1090
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    .line 1087
    return-void
.end method
