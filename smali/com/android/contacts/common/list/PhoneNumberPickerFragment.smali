.class public Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
.implements Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;",
        "Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;"
    }
.end annotation


# static fields
.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_SHORTCUT_ACTION:Ljava/lang/String; = "shortcutAction"

.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mShortcutAction:Ljava/lang/String;

.field private mUseCallableUri:Z


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 70
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 91
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 93
    return-void
.end method

.method private callNumber(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "isVideoCall"    # Z

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, "phoneUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p0, v2, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;Z)V

    .line 228
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getLookupKey(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "lookupKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->maybeTrackAnalytics(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void

    .line 216
    .end local v0    # "lookupKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->cacheContactInfo(I)V

    .line 219
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 220
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v4

    .line 219
    invoke-interface {v3, v1, p2, v4}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 222
    :cond_2
    sget-object v3, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Item at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was clicked before"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    const-string/jumbo v5, " adapter is ready. Ignoring"

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeTrackAnalytics(Ljava/lang/String;)V
    .locals 11
    .param p1, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 386
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    .local v9, "json":Lorg/json/JSONObject;
    const-string/jumbo v0, "analytics_category"

    .line 388
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "analyticsCategory":Ljava/lang/String;
    const-string/jumbo v0, "analytics_action"

    .line 390
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "analyticsAction":Ljava/lang/String;
    const-string/jumbo v0, "analytics_value"

    .line 392
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "analyticsValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 395
    if-eqz v0, :cond_1

    .line 397
    :cond_0
    return-void

    .line 404
    :cond_1
    :try_start_1
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 405
    .local v8, "floatValue":F
    float-to-long v4, v8

    .line 410
    .local v4, "value":J
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 411
    const-string/jumbo v3, ""

    .line 410
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendEvent(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 384
    .end local v1    # "analyticsCategory":Ljava/lang/String;
    .end local v2    # "analyticsAction":Ljava/lang/String;
    .end local v4    # "value":J
    .end local v6    # "analyticsValue":Ljava/lang/String;
    .end local v8    # "floatValue":F
    .end local v9    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 406
    .restart local v1    # "analyticsCategory":Ljava/lang/String;
    .restart local v2    # "analyticsAction":Ljava/lang/String;
    .restart local v6    # "analyticsValue":Ljava/lang/String;
    .restart local v9    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 407
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    return-void

    .line 412
    .end local v1    # "analyticsCategory":Ljava/lang/String;
    .end local v2    # "analyticsAction":Ljava/lang/String;
    .end local v6    # "analyticsValue":Ljava/lang/String;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .local v7, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 143
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 148
    invoke-static {v3, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v1

    .line 150
    .local v1, "shouldShowHeader":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 151
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_1
    return-void

    .end local v1    # "shouldShowHeader":Z
    :cond_2
    move v1, v2

    .line 147
    goto :goto_0

    .line 154
    .restart local v1    # "shouldShowHeader":Z
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 234
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 287
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 288
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 296
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V

    .line 284
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 279
    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 280
    return-object v0
.end method

.method protected getCallInitiationType(Z)I
    .locals 1
    .param p1, "isRemoteDirectory"    # Z

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method protected getLookupKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 250
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-object v0
.end method

.method protected getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 240
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 245
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 305
    const v0, 0x7f04003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 335
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    .line 337
    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 120
    const v1, 0x7f040039

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "paddingView":Landroid/view/View;
    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getVisibleScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 117
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    .line 199
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 261
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 264
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 260
    return-void

    .line 264
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 181
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 185
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 330
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v2

    .line 329
    invoke-interface {v0, v1, v3, v2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZI)V

    .line 328
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    const-string/jumbo v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    const-string/jumbo v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public onVideoCallIconClicked(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    .line 78
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isVideoCall"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v1

    .line 310
    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZI)V

    .line 308
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startPhoneNumberShortcutIntent(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 163
    if-nez p1, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 168
    const-string/jumbo v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 352
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 350
    if-nez v0, :cond_0

    .line 355
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 356
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->reloadData()V

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 349
    return-void
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 108
    return-void
.end method

.method protected setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .prologue
    .line 300
    check-cast p1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .end local p1    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 299
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 1
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 366
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 362
    :cond_0
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 138
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 136
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1, "useCallableUri"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    .line 267
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 256
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 254
    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isVideoCall"    # Z

    .prologue
    .line 318
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 319
    .local v0, "builder":Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public usesCallableUri()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    return v0
.end method
