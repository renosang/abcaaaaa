.class public Lcom/android/incallui/OPDialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "OPDialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/OPDialpadFragment$HoverIgnoringLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDtmfDialerField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    sput-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/OPDialpadFragment;->sHandler:Landroid/os/Handler;

    .line 100
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0144

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mButtonIds:[I

    .line 49
    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x7f0e0145
        0x7f0e0141
        0x7f0e0132
        0x7f0e0133
        0x7f0e0134
        0x7f0e0135
        0x7f0e0136
        0x7f0e0137
        0x7f0e0138
        0x7f0e0139
        0x7f0e0144
        0x7f0e0143
    .end array-data
.end method

.method private configureKeypadListeners()V
    .locals 4

    .prologue
    .line 576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/OPDialpadFragment;->mButtonIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/incallui/OPDialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v3, p0, Lcom/android/incallui/OPDialpadFragment;->mButtonIds:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 578
    .local v0, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 579
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 580
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 581
    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 535
    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    const-string/jumbo v0, ""

    .line 494
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    return-object v0
.end method

.method public getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    .prologue
    .line 426
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 317
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 320
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 322
    sget-object v2, Lcom/android/incallui/OPDialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/OPDialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/OPDialpadFragment$1;-><init>(Lcom/android/incallui/OPDialpadFragment;)V

    .line 327
    const-wide/16 v4, 0x32

    .line 322
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    .end local v1    # "id":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e014c

    if-ne v2, v3, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 312
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 434
    const v1, 0x7f04009d

    .line 433
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0e014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDelete:Landroid/widget/ImageButton;

    .line 436
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDelete:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 437
    const v1, 0x7f0e0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    .line 438
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    .line 441
    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    .line 442
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 443
    new-instance v1, Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    invoke-direct {v1, p0, v4}, Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/OPDialpadFragment;Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;)V

    iput-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    .line 444
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/incallui/OPDialpadFragment;->configureKeypadListeners()V

    .line 455
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    .line 483
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 481
    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 554
    const-string/jumbo v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 558
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 566
    const-string/jumbo v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/OPDialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 342
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    .line 342
    if-eqz v7, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 345
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 346
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 347
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 349
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 365
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v9

    .line 352
    .restart local v1    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 356
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 357
    .local v6, "y":I
    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 360
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 374
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    .end local v0    # "viewId":I
    :cond_1
    :goto_0
    return v4

    .line 377
    .restart local v0    # "viewId":I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 459
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    const-string/jumbo v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 398
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 403
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/OPDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 408
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    return-void
.end method
