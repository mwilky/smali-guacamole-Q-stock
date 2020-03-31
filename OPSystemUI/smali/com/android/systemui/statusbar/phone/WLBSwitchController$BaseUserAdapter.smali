.class public abstract Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "WLBSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$500(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getModes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getModes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getModes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
