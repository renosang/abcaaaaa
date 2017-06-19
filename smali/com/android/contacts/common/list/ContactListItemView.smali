.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;,
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ContactListItemView"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountIconHeight:I

.field private mAccountIconWidth:I

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mAdjustSelectionBoundsEnabled:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxHeight:I

.field private mCheckBoxWidth:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mGapBetweenImageAndText:I

.field private mGapBetweenLabelAndData:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWidth:I

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mIsSectionHeaderEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mLeftOffset:I

.field private mNameHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNameTextViewTextColor:I

.field private mNameTextViewTextSize:I

.field private mNumberHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumberListAdapterListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPosition:I

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mRightOffset:I

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mShowVideoCallIcon:Z

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private mSupportVideoCallIcon:Z

.field private final mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

.field private mTextIndent:I

.field private mTextOffsetTop:I

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field private mVideoCallIcon:Landroid/widget/ImageView;

.field private mVideoCallIconMargin:I

.field private mVideoCallIconSize:I

.field private mWorkProfileIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneNumberListAdapterListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPosition:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1799
    const-string/jumbo v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    .line 1798
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 95
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 96
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 97
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 98
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 99
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 100
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 105
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    .line 106
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    .line 115
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 119
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 145
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 174
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 181
    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 201
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 227
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 230
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 240
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconWidth:I

    .line 241
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconHeight:I

    .line 254
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 255
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 258
    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a032a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 274
    .local v0, "spanColorBg":I
    new-instance v1, Lcom/android/contacts/common/format/TextHighlighter;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(Landroid/text/style/CharacterStyle;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 96
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 97
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 98
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 99
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 100
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 105
    const/16 v2, 0x20

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    .line 106
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    .line 115
    iput v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 119
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 145
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 150
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 174
    invoke-static {v6}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 181
    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 201
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 227
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 230
    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 240
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconWidth:I

    .line 241
    const/16 v2, 0x11

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconHeight:I

    .line 254
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 255
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 258
    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 260
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 291
    sget-object v2, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 295
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 294
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 297
    const/4 v2, 0x2

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 300
    const/16 v3, 0x8

    .line 299
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 304
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 303
    const/16 v3, 0x9

    .line 302
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 307
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 306
    const/16 v3, 0xa

    .line 305
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 310
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 309
    const/16 v3, 0xb

    .line 308
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 312
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    const/16 v3, 0xc

    .line 311
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 314
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    const/16 v3, 0x16

    .line 313
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 316
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    const/16 v3, 0x17

    .line 315
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    .line 319
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 318
    const/16 v3, 0x18

    .line 317
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 322
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 321
    const/16 v3, 0x19

    .line 320
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 325
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 324
    const/16 v3, 0x14

    .line 323
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 328
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 327
    const/16 v3, 0x15

    .line 326
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    .line 331
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    .line 330
    const/16 v3, 0x1a

    .line 329
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    .line 334
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    .line 333
    const/16 v3, 0x1b

    .line 332
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    .line 337
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconWidth:I

    const/16 v3, 0x1c

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconWidth:I

    .line 338
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconHeight:I

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconHeight:I

    .line 343
    const/4 v2, 0x7

    .line 342
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 344
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 347
    const/4 v4, 0x5

    .line 346
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 349
    const/4 v5, 0x6

    .line 348
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 341
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    .line 351
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a032a

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 358
    .local v1, "spanColorBg":I
    new-instance v2, Lcom/android/contacts/common/format/TextHighlighter;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(Landroid/text/style/CharacterStyle;)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 361
    sget-object v2, Lcom/android/contacts/common/R$styleable;->Theme:[I

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 367
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    .line 370
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 374
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    .line 377
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setLayoutDirection(I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "supportVideoCallIcon"    # Z

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    iput-boolean p3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 280
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 947
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 948
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    if-nez v0, :cond_1

    .line 949
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-nez v0, :cond_0

    .line 950
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 952
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 953
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    .line 957
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 945
    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 972
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 973
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 974
    return-object v0
.end method

.method public static final getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 3
    .param p0, "opposite"    # Z

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 164
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 165
    .local v0, "layoutDirection":I
    packed-switch v0, :pswitch_data_0

    .line 170
    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object v2

    .line 167
    :pswitch_0
    if-eqz p0, :cond_0

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_1
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_1

    .line 170
    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1494
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private final pointIsInView(FF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v0, 0x0

    .line 1894
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1895
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 1894
    :cond_0
    return v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 1307
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1308
    .local v0, "spannable":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 1309
    const/16 v4, 0x21

    .line 1308
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1310
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # [C
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 1296
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1297
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1295
    :goto_0
    return-void

    .line 1299
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method private snippetize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "matchIndex"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 1745
    move v2, p3

    .line 1746
    .local v2, "remainingLength":I
    move v5, p3

    .line 1749
    .local v5, "tempRemainingLength":I
    move v1, p2

    .line 1750
    .local v1, "index":I
    move v0, p2

    .line 1753
    .local v0, "endTokenIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1754
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1755
    move v0, v1

    .line 1756
    move v2, v5

    .line 1764
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 1765
    move v5, v2

    .line 1766
    move v4, p2

    .line 1767
    .local v4, "startTokenIndex":I
    :goto_1
    const/4 v6, -0x1

    if-le v1, v6, :cond_3

    if-lez v5, :cond_3

    .line 1768
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1769
    move v4, v1

    .line 1770
    move v2, v5

    .line 1772
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 1773
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1759
    .end local v4    # "startTokenIndex":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 1760
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1776
    .restart local v4    # "startTokenIndex":I
    :cond_3
    move v1, v0

    .line 1777
    move v5, v2

    .line 1779
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    if-lez v5, :cond_5

    .line 1780
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1781
    move v0, v1

    .line 1783
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 1784
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1787
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1788
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_6

    .line 1789
    const-string/jumbo v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    :cond_6
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1793
    const-string/jumbo v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static split(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1811
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1812
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1813
    .local v1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1816
    :cond_0
    return-object v1
.end method

.method private updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "snippet"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1704
    :cond_0
    return-object v7

    .line 1706
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1710
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1711
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "lowerDisplayName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1713
    .local v5, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nameToken$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1714
    .local v3, "nameToken":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1715
    return-object v7

    .line 1722
    .end local v1    # "lowerDisplayName":Ljava/lang/String;
    .end local v3    # "nameToken":Ljava/lang/String;
    .end local v4    # "nameToken$iterator":Ljava/util/Iterator;
    .end local v5    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {p1, p2}, Lcom/android/contacts/common/util/SearchUtil;->findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    move-result-object v2

    .line 1724
    .local v2, "matched":Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    if-eqz v2, :cond_5

    iget-object v6, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 1728
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1729
    const v7, 0x7f0c001c

    .line 1728
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1730
    .local v0, "lengthThreshold":I
    iget-object v6, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 1731
    iget-object v6, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    iget v7, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    invoke-direct {p0, v6, v7, v0}, Lcom/android/contacts/common/list/ContactListItemView;->snippetize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1733
    :cond_4
    iget-object v6, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    return-object v6

    .line 1738
    .end local v0    # "lengthThreshold":I
    :cond_5
    return-object v7
.end method


# virtual methods
.method public addNameHighlightSequence(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    return-void
.end method

.method public addNumberHighlightSequence(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 931
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 932
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 933
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 934
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 929
    :cond_0
    return-void
.end method

.method public clearHighlightSequences()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    .line 1122
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 999
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 979
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 980
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 978
    :cond_0
    return-void
.end method

.method public getAccountIconView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    .line 1474
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1475
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1476
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1321
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 1323
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1334
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1335
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1336
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1337
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08035b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1338
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1339
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1340
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1341
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x1

    .line 1223
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1225
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1229
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1230
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08035c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1238
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1236
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1150
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1151
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1152
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1156
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    int-to-float v1, v1

    .line 1155
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1163
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1190
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1192
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1194
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1197
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1198
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/widget/CheckableImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    .line 1071
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/CheckableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/CheckableImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1036
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    if-nez v0, :cond_3

    .line 1040
    new-instance v0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    .line 1041
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1047
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d0128

    .line 1046
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1051
    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1053
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1376
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1377
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1378
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1379
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1380
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1381
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1391
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1392
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1393
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1394
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1395
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1396
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1397
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCheckBox()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1550
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1552
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 1549
    :cond_0
    return-void
.end method

.method public hideDisplayName()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1557
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1559
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1556
    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1574
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1576
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1573
    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 939
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 992
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 993
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 991
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 634
    sub-int v10, p5, p3

    .line 635
    .local v10, "height":I
    sub-int v27, p4, p2

    .line 638
    .local v27, "width":I
    const/16 v24, 0x0

    .line 639
    .local v24, "topBound":I
    move v5, v10

    .line 640
    .local v5, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v17

    .line 641
    .local v17, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v29

    sub-int v20, v27, v29

    .line 643
    .local v20, "rightBound":I
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v16

    .line 646
    .local v16, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 649
    .local v8, "headerHeight":I
    add-int/lit8 v29, v10, 0x0

    sub-int v29, v29, v8

    div-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    move/from16 v30, v0

    add-int v9, v29, v30

    .line 651
    .local v9, "headerTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    .line 652
    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    move/from16 v30, v29

    .line 654
    :goto_0
    if-eqz v16, :cond_18

    move/from16 v29, v20

    .line 655
    :goto_1
    add-int v32, v9, v8

    .line 651
    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v29

    move/from16 v3, v32

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 657
    .end local v8    # "headerHeight":I
    .end local v9    # "headerTopBound":I
    :cond_0
    if-eqz v16, :cond_19

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v29, v0

    sub-int v20, v20, v29

    .line 664
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    add-int v30, p2, v17

    add-int v31, p2, v20

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v24

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    add-int v29, p2, v17

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    .line 666
    add-int v29, p2, v20

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    .line 667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 668
    if-eqz v16, :cond_1a

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v29, v0

    sub-int v20, v20, v29

    .line 675
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 680
    add-int/lit8 v29, v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v18, v29, 0x0

    .line 681
    .local v18, "photoTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v30, v0

    sub-int v30, v20, v30

    .line 685
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v18

    .line 682
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 692
    :goto_4
    if-eqz v16, :cond_1c

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v17, v17, v29

    .line 699
    .end local v18    # "photoTop":I
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    move-object/from16 v19, v0

    .line 700
    .local v19, "photoView":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1f

    .line 702
    if-eqz v19, :cond_1e

    .line 704
    add-int/lit8 v29, v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v18, v29, 0x0

    .line 708
    .restart local v18    # "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    add-int v29, v29, v17

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v18

    .line 705
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v17, v17, v29

    .line 737
    .end local v18    # "photoTop":I
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 738
    add-int/lit8 v29, v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v18, v29, 0x0

    .line 739
    .restart local v18    # "photoTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v15

    .line 740
    .local v15, "iconWith":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v11

    .line 741
    .local v11, "iconHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v29, v0

    add-int v29, v29, v18

    sub-int v13, v29, v11

    .line 743
    .local v13, "iconTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_22

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v29, v0

    sub-int v29, v17, v29

    sub-int v12, v29, v15

    .line 748
    .local v12, "iconLeft":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    add-int v30, v12, v15

    add-int v31, v13, v11

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 752
    .end local v11    # "iconHeight":I
    .end local v12    # "iconLeft":I
    .end local v13    # "iconTop":I
    .end local v15    # "iconWith":I
    .end local v18    # "photoTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 757
    add-int/lit8 v29, v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    .line 756
    add-int/lit8 v26, v29, 0x0

    .line 759
    .local v26, "videoIconTop":I
    if-nez v16, :cond_23

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v30, v0

    sub-int v30, v20, v30

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v31, v0

    add-int v31, v31, v26

    .line 761
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v20

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 774
    .end local v26    # "videoIconTop":I
    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_24

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v20, v20, v29

    .line 783
    :cond_8
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v30, v0

    .line 783
    add-int v29, v29, v30

    .line 784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v30, v0

    .line 783
    add-int v29, v29, v30

    .line 784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v30, v0

    .line 783
    add-int v25, v29, v30

    .line 785
    .local v25, "totalTextHeight":I
    add-int/lit8 v29, v10, 0x0

    sub-int v29, v29, v25

    div-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    move/from16 v30, v0

    add-int v23, v29, v30

    .line 788
    .local v23, "textTopBound":I
    const/16 v28, 0x0

    .line 789
    .local v28, "workProfileIconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v28

    .line 791
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v29, v0

    if-lez v29, :cond_25

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v7, v29, v30

    .line 793
    .local v7, "distanceFromEnd":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_26

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    sub-int v30, v20, v28

    sub-int v30, v30, v7

    .line 797
    sub-int v31, v20, v7

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v32, v0

    add-int v32, v32, v23

    .line 795
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 810
    .end local v7    # "distanceFromEnd":I
    :cond_9
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_27

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 814
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 826
    :cond_a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-nez v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 827
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v29, v0

    add-int v23, v23, v29

    .line 831
    :cond_c
    if-eqz v16, :cond_28

    .line 832
    move/from16 v22, v20

    .line 833
    .local v22, "statusRightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 835
    .local v14, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    .line 836
    sub-int v30, v20, v14

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    .line 835
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v29, v0

    add-int v29, v29, v14

    sub-int v22, v22, v29

    .line 843
    .end local v14    # "iconWidth":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 844
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 869
    .end local v22    # "statusRightBound":I
    :cond_e
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 870
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v29, v0

    add-int v23, v23, v29

    .line 874
    :cond_10
    move/from16 v6, v17

    .line 875
    .local v6, "dataLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 876
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v29, v0

    add-int v23, v23, v29

    .line 884
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2a

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v30

    sub-int v30, v20, v30

    .line 888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v32, v0

    add-int v32, v32, v23

    .line 887
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v20

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v29

    sub-int v20, v20, v29

    .line 903
    :cond_12
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 904
    if-nez v16, :cond_2b

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    .line 905
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 916
    :cond_13
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-nez v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 917
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v29, v0

    add-int v23, v23, v29

    .line 920
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 921
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 633
    :cond_16
    return-void

    .end local v6    # "dataLeftBound":I
    .end local v19    # "photoView":Landroid/view/View;
    .end local v23    # "textTopBound":I
    .end local v25    # "totalTextHeight":I
    .end local v28    # "workProfileIconWidth":I
    .restart local v8    # "headerHeight":I
    .restart local v9    # "headerTopBound":I
    :cond_17
    move/from16 v30, v17

    .line 652
    goto/16 :goto_0

    .line 654
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v29, v0

    add-int v29, v29, v17

    goto/16 :goto_1

    .line 660
    .end local v8    # "headerHeight":I
    .end local v9    # "headerTopBound":I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v29, v0

    add-int v17, v17, v29

    goto/16 :goto_2

    .line 671
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v29, v0

    add-int v17, v17, v29

    goto/16 :goto_3

    .line 687
    .restart local v18    # "photoTop":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v30, v0

    add-int v30, v30, v17

    .line 690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v18

    .line 687
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->layout(IIII)V

    goto/16 :goto_4

    .line 695
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v20, v20, v29

    goto/16 :goto_5

    .line 699
    .end local v18    # "photoTop":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    move-object/from16 v19, v0

    .restart local v19    # "photoView":Landroid/view/View;
    goto/16 :goto_6

    .line 711
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v17, v17, v29

    goto/16 :goto_7

    .line 717
    :cond_1f
    if-eqz v19, :cond_21

    .line 719
    add-int/lit8 v29, v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v18, v29, 0x0

    .line 721
    .restart local v18    # "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v18

    .line 720
    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v20, v20, v29

    .line 732
    .end local v18    # "photoTop":I
    :cond_20
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    move/from16 v29, v0

    add-int v17, v17, v29

    goto/16 :goto_7

    .line 726
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_20

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v20, v20, v29

    goto :goto_11

    .line 746
    .restart local v11    # "iconHeight":I
    .restart local v13    # "iconTop":I
    .restart local v15    # "iconWith":I
    .restart local v18    # "photoTop":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v29, v0

    add-int v12, v20, v29

    .restart local v12    # "iconLeft":I
    goto/16 :goto_8

    .line 767
    .end local v11    # "iconHeight":I
    .end local v12    # "iconLeft":I
    .end local v13    # "iconTop":I
    .end local v15    # "iconWith":I
    .end local v18    # "photoTop":I
    .restart local v26    # "videoIconTop":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v30, v0

    add-int v30, v30, v17

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v31, v0

    add-int v31, v31, v26

    .line 767
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_9

    .line 777
    .end local v26    # "videoIconTop":I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v17, v17, v29

    goto/16 :goto_a

    .line 792
    .restart local v23    # "textTopBound":I
    .restart local v25    # "totalTextHeight":I
    .restart local v28    # "workProfileIconWidth":I
    :cond_25
    const/4 v7, 0x0

    .restart local v7    # "distanceFromEnd":I
    goto/16 :goto_b

    .line 801
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    add-int v30, v17, v7

    .line 803
    add-int v31, v17, v28

    add-int v31, v31, v7

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v32, v0

    add-int v32, v32, v23

    .line 801
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_c

    .line 819
    .end local v7    # "distanceFromEnd":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 819
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_d

    .line 850
    :cond_28
    move/from16 v21, v17

    .line 851
    .local v21, "statusLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_29

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 853
    .restart local v14    # "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    .line 856
    add-int v30, v17, v14

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    .line 853
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v29, v0

    add-int v29, v29, v14

    add-int v21, v21, v29

    .line 861
    .end local v14    # "iconWidth":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    .line 862
    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_e

    .line 894
    .end local v21    # "statusLeftBound":I
    .restart local v6    # "dataLeftBound":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v29

    add-int v6, v17, v29

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    .line 895
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v29, v0

    add-int v6, v6, v29

    goto/16 :goto_f

    .line 910
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v30

    sub-int v30, v20, v30

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v31, v0

    add-int v31, v31, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v32, v0

    add-int v32, v32, v23

    .line 910
    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v20

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_10
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 445
    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result v11

    .line 446
    .local v11, "specWidth":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 448
    .local v10, "preferredHeight":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 449
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 450
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 451
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 452
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 453
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 454
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 455
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    .line 456
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 463
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v14, :cond_10

    .line 464
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v14

    sub-int v14, v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 465
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 464
    sub-int v2, v14, v15

    .line 470
    .local v2, "effectiveWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz v14, :cond_1

    .line 471
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v14, v15

    sub-int/2addr v2, v14

    .line 474
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    if-eqz v14, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconMargin:I

    add-int/2addr v14, v15

    sub-int/2addr v2, v14

    .line 480
    :cond_2
    const/4 v3, 0x0

    .line 482
    .local v3, "gapBetweenTextAndCheckBox":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 484
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 485
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 483
    invoke-virtual/range {v14 .. v16}, Landroid/widget/CheckBox;->measure(II)V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxHeight:I

    .line 488
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    sub-int/2addr v2, v14

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 492
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 494
    sub-int v9, v2, v3

    .line 495
    .local v9, "nameTextWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v15, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v14, v15, :cond_4

    .line 496
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    sub-int/2addr v9, v14

    .line 498
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 499
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 500
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 498
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 504
    .end local v9    # "nameTextWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 506
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 507
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 505
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 517
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v14, v2, v14

    sub-int v13, v14, v3

    .line 518
    .local v13, "totalWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int/2addr v14, v13

    .line 519
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 518
    div-int v1, v14, v15

    .line 520
    .local v1, "dataWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    mul-int/2addr v14, v13

    .line 521
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 520
    div-int v7, v14, v15

    .line 535
    .end local v13    # "totalWidth":I
    .local v7, "labelWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 537
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 536
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 541
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v15, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v14, v15, :cond_14

    .line 545
    const/high16 v8, 0x40000000    # 2.0f

    .line 546
    .local v8, "mode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 547
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 546
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 550
    .end local v8    # "mode":I
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 554
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 555
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 553
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 560
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 562
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 561
    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 567
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    .line 569
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIconSize:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 568
    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 573
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 575
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 576
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 574
    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 578
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 577
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 581
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    .line 586
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 585
    sub-int v12, v14, v15

    .line 590
    .local v12, "statusWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 591
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 590
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 593
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 592
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 597
    .end local v12    # "statusWidth":I
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v14, v15

    .line 598
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 597
    add-int/2addr v14, v15

    .line 599
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 597
    add-int/2addr v14, v15

    .line 599
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 597
    add-int v5, v14, v15

    .line 603
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v15

    add-int v6, v14, v15

    .line 604
    .local v6, "heightPadding":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v5, v14, v6

    .line 607
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 610
    const/4 v4, 0x0

    .line 611
    .local v4, "headerTextHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v14

    if-nez v14, :cond_e

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 613
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 614
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 612
    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->measure(II)V

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 619
    :cond_e
    add-int v14, v4, v6

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconWidth:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconHeight:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 624
    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 629
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 442
    return-void

    .line 467
    .end local v1    # "dataWidth":I
    .end local v2    # "effectiveWidth":I
    .end local v3    # "gapBetweenTextAndCheckBox":I
    .end local v4    # "headerTextHeight":I
    .end local v5    # "height":I
    .end local v6    # "heightPadding":I
    .end local v7    # "labelWidth":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v14

    sub-int v14, v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v15

    sub-int v2, v14, v15

    .restart local v2    # "effectiveWidth":I
    goto/16 :goto_0

    .line 523
    .restart local v3    # "gapBetweenTextAndCheckBox":I
    :cond_11
    sub-int v1, v2, v3

    .line 524
    .restart local v1    # "dataWidth":I
    const/4 v7, 0x0

    .restart local v7    # "labelWidth":I
    goto/16 :goto_1

    .line 527
    .end local v1    # "dataWidth":I
    .end local v7    # "labelWidth":I
    :cond_12
    const/4 v1, 0x0

    .line 528
    .restart local v1    # "dataWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 529
    sub-int v7, v2, v3

    .restart local v7    # "labelWidth":I
    goto/16 :goto_1

    .line 531
    .end local v7    # "labelWidth":I
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "labelWidth":I
    goto/16 :goto_1

    .line 545
    :cond_14
    const/high16 v8, -0x80000000

    .restart local v8    # "mode":I
    goto/16 :goto_2

    .line 588
    .end local v8    # "mode":I
    :cond_15
    move v12, v2

    .restart local v12    # "statusWidth":I
    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1882
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1886
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->pointIsInView(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1889
    const/4 v2, 0x1

    return v2

    .line 1887
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public removeAccountIconView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1482
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1484
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    .line 1481
    :cond_0
    return-void
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 1084
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 1083
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1097
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 1098
    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 1099
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1101
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1105
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    .line 1095
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    .line 1836
    return-void
.end method

.method public setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1456
    if-eqz p1, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    .line 1459
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1463
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1455
    :cond_1
    :goto_0
    return-void

    .line 1465
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1828
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1827
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1832
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 1831
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setChecked(ZZ)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Lcom/android/contacts/common/widget/CheckableImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/widget/CheckableImageView;->setChecked(ZZ)V

    .line 1056
    :cond_1
    return-void
.end method

.method public setData([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 1249
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1248
    :cond_1
    :goto_0
    return-void

    .line 1254
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1255
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1522
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1523
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1535
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1537
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1539
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1540
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1541
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1540
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1519
    :goto_1
    return-void

    .line 1524
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1525
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1526
    .local v2, "spannableName":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "highlightSequence$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1527
    .local v0, "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->-get1(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    .line 1528
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->-get0(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v5

    .line 1527
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    goto :goto_2

    .line 1530
    .end local v0    # "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    :cond_2
    move-object p1, v2

    goto :goto_0

    .line 1533
    .end local v1    # "highlightSequence$iterator":Ljava/util/Iterator;
    .end local v2    # "spannableName":Landroid/text/SpannableString;
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1545
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "highlight"    # Z

    .prologue
    .line 1512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->clearHighlightSequences()V

    .line 1514
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addNameHighlightSequence(II)V

    .line 1516
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1511
    return-void
.end method

.method public setDrawableResource(I)V
    .locals 6
    .param p1, "drawableId"    # I

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    .line 1858
    .local v3, "photo":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1859
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1861
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0316

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 1862
    .local v2, "iconColor":I
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1863
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1856
    :goto_0
    return-void

    .line 1866
    :cond_0
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1867
    .local v1, "drawableWrapper":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1868
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawableResourceWithoutTint(I)V
    .locals 3
    .param p1, "drawableId"    # I

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1874
    .local v1, "photo":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1875
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1876
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1872
    return-void
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "upperCasePrefix"    # Ljava/lang/String;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    .line 1115
    return-void
.end method

.method public setIsSectionHeaderEnabled(Z)V
    .locals 0
    .param p1, "isSectionHeaderEnabled"    # Z

    .prologue
    .line 1029
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    .line 1028
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1265
    if-nez p1, :cond_1

    .line 1266
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1267
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1278
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1280
    .local v1, "textToSet":Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1281
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1282
    .local v0, "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->-get1(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    .line 1283
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->-get0(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    .line 1282
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    .line 1286
    .end local v0    # "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1290
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1291
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public setPhoneticName([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 1175
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 1181
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1182
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 1843
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1422
    if-eqz p1, :cond_2

    .line 1423
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1424
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1425
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1428
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1429
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1421
    :cond_1
    :goto_0
    return-void

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 384
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08035a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1017
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1010
    :cond_1
    :goto_0
    return-void

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShowVideoCallIcon(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V
    .locals 3
    .param p1, "showVideoCallIcon"    # Z
    .param p2, "listener"    # Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .param p3, "position"    # I

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 400
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneNumberListAdapterListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    .line 401
    iput p3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPosition:I

    .line 403
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mShowVideoCallIcon:Z

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    .line 406
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 409
    const v2, 0x7f0d01f0

    .line 408
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 412
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/list/ContactListItemView$1;-><init>(Lcom/android/contacts/common/list/ContactListItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/common/format/TextHighlighter;->setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1363
    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1362
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1413
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSupportVideoCallIcon(Z)V
    .locals 0
    .param p1, "supportVideoCallIcon"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 437
    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 380
    return-void
.end method

.method public setWorkProfileIconEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1443
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1444
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1442
    :cond_0
    :goto_1
    return-void

    .line 1444
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1445
    :cond_2
    if-eqz p1, :cond_0

    .line 1446
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 1447
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1448
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1449
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1450
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1824
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setData([CI)V

    .line 1822
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I
    .param p3, "displayOrder"    # I

    .prologue
    .line 1499
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    if-eqz v1, :cond_0

    .line 1506
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Lcom/android/contacts/common/widget/CheckableQuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1507
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0128

    .line 1506
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1498
    :cond_0
    return-void
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "phoneticNameColumnIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1564
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1565
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1566
    .local v0, "phoneticNameSize":I
    if-eqz v0, :cond_0

    .line 1567
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1563
    :goto_0
    return-void

    .line 1569
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "presenceColumnIndex"    # I
    .param p3, "contactStatusColumnIndex"    # I

    .prologue
    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1587
    .local v1, "presence":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1588
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1589
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1591
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1593
    const/4 v2, 0x0

    .line 1594
    .local v2, "statusMessage":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1599
    .end local v2    # "statusMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1600
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1602
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1584
    return-void

    .line 1595
    .restart local v2    # "statusMessage":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "statusMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "summarySnippetColumnIndex"    # I

    .prologue
    .line 1634
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v15

    move/from16 v0, p2

    if-le v15, v0, :cond_2

    .line 1635
    const-string/jumbo v15, "snippet"

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1640
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1643
    .local v12, "snippet":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1644
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v15, "deferred_snippeting"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1646
    const-string/jumbo v15, "deferred_snippeting_query"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1648
    .local v10, "query":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1649
    .local v2, "displayName":Ljava/lang/String;
    const-string/jumbo v15, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1650
    .local v3, "displayNameIndex":I
    if-ltz v3, :cond_0

    .line 1651
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1654
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v2}, Lcom/android/contacts/common/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1689
    .end local v3    # "displayNameIndex":I
    .end local v10    # "query":Ljava/lang/String;
    .end local v12    # "snippet":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1633
    return-void

    .line 1636
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1637
    return-void

    .line 1657
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v12    # "snippet":Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_1

    .line 1658
    const/4 v7, 0x0

    .line 1659
    .local v7, "from":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 1660
    .local v14, "to":I
    const/16 v15, 0x5b

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 1661
    .local v13, "start":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_4

    .line 1662
    const/4 v12, 0x0

    .local v12, "snippet":Ljava/lang/String;
    goto :goto_0

    .line 1664
    .local v12, "snippet":Ljava/lang/String;
    :cond_4
    const/16 v15, 0xa

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1665
    .local v6, "firstNl":I
    const/4 v15, -0x1

    if-eq v6, v15, :cond_5

    .line 1666
    add-int/lit8 v7, v6, 0x1

    .line 1668
    :cond_5
    const/16 v15, 0x5d

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1669
    .local v4, "end":I
    const/4 v15, -0x1

    if-eq v4, v15, :cond_6

    .line 1670
    const/16 v15, 0xa

    invoke-virtual {v12, v15, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1671
    .local v9, "lastNl":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_6

    .line 1672
    move v14, v9

    .line 1676
    .end local v9    # "lastNl":I
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v11, "sb":Ljava/lang/StringBuilder;
    move v8, v7

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_8

    .line 1678
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1679
    .local v1, "c":C
    const/16 v15, 0x5b

    if-eq v1, v15, :cond_7

    .line 1680
    const/16 v15, 0x5d

    if-eq v1, v15, :cond_7

    .line 1681
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1677
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1684
    .end local v1    # "c":C
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method public showSnippet(Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetColumn"    # I

    .prologue
    const/4 v2, 0x0

    .line 1613
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "snippet":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1615
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1616
    return-void

    .line 1618
    :cond_0
    const-string/jumbo v3, "display_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1619
    const-string/jumbo v3, "display_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1624
    return-void

    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 1619
    goto :goto_0

    .line 1627
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1608
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
