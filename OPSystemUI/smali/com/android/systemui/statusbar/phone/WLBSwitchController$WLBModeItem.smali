.class public final Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;
.super Ljava/lang/Object;
.source "WLBSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WLBModeItem"
.end annotation


# instance fields
.field private isActive:Z

.field private isConfigured:Z

.field private mode:I

.field private modeName:Ljava/lang/String;

.field private picture:Landroid/graphics/drawable/Drawable;

.field private triggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->picture:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->mode:I

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->modeName:Ljava/lang/String;

    return-object p0
.end method

.method public getPicture()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->picture:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTriggerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->triggerName:Ljava/lang/String;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive:Z

    return p0
.end method

.method public isConfigured()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isConfigured:Z

    return p0
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive:Z

    return-void
.end method

.method public setConfigured(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isConfigured:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->mode:I

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->modeName:Ljava/lang/String;

    return-void
.end method

.method public setPicture(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->picture:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTriggerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->triggerName:Ljava/lang/String;

    return-void
.end method
