.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract isCallSubjectVisible()Z
.end method

.method public abstract isManageConferenceVisible()Z
.end method

.method public abstract setCallButtonsVisible(Z)V
.end method

.method public abstract setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
.end method

.method public abstract setEndCallButtonAnimation()V
.end method

.method public abstract setEndCallButtonEnabled(ZZ)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setPrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZJ)V
.end method

.method public abstract setPrimaryCallInfoAnimation(Z)V
.end method

.method public abstract setPrimaryCallInfoAnimationDelay(Z)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
.end method

.method public abstract setSecondaryPhoto(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public abstract setSecondaryYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
.end method

.method public abstract showContactContext(Z)V
.end method

.method public abstract showHdAudioIndicator(Z)V
.end method

.method public abstract showManageConferenceCallButton(Z)V
.end method

.method public abstract showNoteSentToast()V
.end method
