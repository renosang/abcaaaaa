.class public Lcom/android/dialer/filterednumber/NumbersAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "NumbersAdapter.java"


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    const/4 v6, 0x0

    .line 52
    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    const v2, 0x7f040026

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 44
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 53
    iput-object p1, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 55
    iput-object p3, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 56
    iput-object p4, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 51
    return-void
.end method

.method private getDisplayNumber(Lcom/android/dialer/calllog/ContactInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 112
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    return-object v0

    .line 117
    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getNumberTypeOrLocation(Lcom/android/dialer/calllog/ContactInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "info"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 122
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget-object v2, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 123
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/dialer/util/PhoneNumberUtil;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadContactPhoto(Lcom/android/dialer/calllog/ContactInfo;Ljava/lang/String;Landroid/widget/QuickContactBadge;)V
    .locals 8
    .param p1, "info"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "badge"    # Landroid/widget/QuickContactBadge;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 98
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 99
    const/4 v7, 0x0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    iget v1, p1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->isBusiness(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v6, 0x2

    .line 102
    .local v6, "contactType":I
    :goto_1
    new-instance v5, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v5, p2, v7, v6, v4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 104
    .local v5, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 106
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const v2, 0x7f0d026e

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v2, p1, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 97
    return-void

    .line 99
    .end local v5    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .end local v6    # "contactType":I
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .local v7, "lookupKey":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v7    # "lookupKey":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    .restart local v6    # "contactType":I
    goto :goto_1
.end method


# virtual methods
.method protected getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method public updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 60
    const v8, 0x7f0e00a8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "callerName":Landroid/widget/TextView;
    const v8, 0x7f0e00a9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "callerNumber":Landroid/widget/TextView;
    const v8, 0x7f0e00a7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    .line 64
    .local v7, "quickContactBadge":Landroid/widget/QuickContactBadge;
    invoke-virtual {v7, v9}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    const-string/jumbo v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v8, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v8, p2, p3}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v4

    .line 70
    .local v4, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-nez v4, :cond_1

    .line 71
    new-instance v4, Lcom/android/dialer/calllog/ContactInfo;

    .end local v4    # "info":Lcom/android/dialer/calllog/ContactInfo;
    invoke-direct {v4}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 72
    .restart local v4    # "info":Lcom/android/dialer/calllog/ContactInfo;
    iput-object p2, v4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 74
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/dialer/filterednumber/NumbersAdapter;->getNumberTypeOrLocation(Lcom/android/dialer/calllog/ContactInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 75
    .local v5, "locationOrType":Ljava/lang/CharSequence;
    invoke-direct {p0, v4}, Lcom/android/dialer/filterednumber/NumbersAdapter;->getDisplayNumber(Lcom/android/dialer/calllog/ContactInfo;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "displayNumber":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/dialer/filterednumber/NumbersAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 77
    sget-object v9, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 76
    invoke-virtual {v8, v2, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "displayNumberStr":Ljava/lang/String;
    iget-object v8, v4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 81
    iget-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 82
    .local v6, "nameForDefaultImage":Ljava/lang/String;
    iget-object v8, v4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    invoke-direct {p0, v4, v6, v7}, Lcom/android/dialer/filterednumber/NumbersAdapter;->loadContactPhoto(Lcom/android/dialer/calllog/ContactInfo;Ljava/lang/String;Landroid/widget/QuickContactBadge;)V

    .line 59
    return-void

    .line 85
    .end local v6    # "nameForDefaultImage":Ljava/lang/String;
    :cond_2
    move-object v6, v2

    .line 86
    .restart local v6    # "nameForDefaultImage":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 88
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
