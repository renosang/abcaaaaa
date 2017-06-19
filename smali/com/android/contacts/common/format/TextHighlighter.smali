.class public Lcom/android/contacts/common/format/TextHighlighter;
.super Ljava/lang/Object;
.source "TextHighlighter.java"


# static fields
.field private static final DEBUG:Z

.field private static isOverSea:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mTextStyle:I

.field private mTextStyleSpan:Landroid/text/style/CharacterStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    new-array v0, v2, [I

    .line 41
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 40
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/format/TextHighlighter;->isOverSea:Z

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "textStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->TAG:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    .line 46
    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/text/style/CharacterStyle;)V
    .locals 1
    .param p1, "styleSpan"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    .line 50
    return-void
.end method

.method private getStyleSpan()Landroid/text/style/CharacterStyle;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public applyMaskingHighlight(Landroid/text/SpannableString;II)V
    .locals 2
    .param p1, "text"    # Landroid/text/SpannableString;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    return-void
.end method

.method public applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 88
    if-nez p2, :cond_0

    .line 89
    return-object p1

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "prefixStart":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "trimmedPrefix":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/contacts/common/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "index":I
    if-ne v0, v5, :cond_2

    sget-boolean v4, Lcom/android/contacts/common/format/TextHighlighter;->isOverSea:Z

    if-eqz v4, :cond_4

    .line 106
    :cond_2
    :goto_1
    if-eq v0, v5, :cond_5

    .line 107
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    .local v2, "result":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 109
    return-object v2

    .line 96
    .end local v0    # "index":I
    .end local v2    # "result":Landroid/text/SpannableString;
    .end local v3    # "trimmedPrefix":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .restart local v0    # "index":I
    .restart local v3    # "trimmedPrefix":Ljava/lang/String;
    :cond_4
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 103
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 111
    :cond_5
    return-object p1
.end method

.method public setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
