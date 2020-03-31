.class public Lcom/android/systemui/qs/QSCarrierGroup;
.super Landroid/widget/LinearLayout;
.source "QSCarrierGroup.java"

# interfaces
.implements Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierDividers:[Landroid/view/View;

.field private mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

.field private mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private final mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

.field private mListening:Z

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    const/4 p1, 0x3

    new-array p2, p1, [Lcom/android/systemui/qs/QSCarrier;

    iput-object p2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    new-array p1, p1, [Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    iput-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$0p7pWsKpp34MM-nnVAyrc3LuU8Q;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/-$$Lambda$0p7pWsKpp34MM-nnVAyrc3LuU8Q;-><init>(Lcom/android/systemui/qs/QSCarrierGroup;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleUpdateState()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSCarrier;->updateState(Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v2, v0

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v2, v5

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-nez v2, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, p0, v0

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_3

    aget-object p0, p0, v5

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v4

    :cond_4
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateListeners()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getSlotIndex(I)I
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSCarrierGroup;->setListening(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    sget v1, Lcom/android/systemui/R$id;->carrier3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->qs_carrier_divider1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->qs_carrier_divider2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    new-instance v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;-><init>()V

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x1040366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/CarrierTextController;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0, v2, v2}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->updateListeners()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method

.method public updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 10

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->airplaneMode:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v2, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->anySimReady:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    new-array v2, v3, [Z

    iget-object v5, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v5, v5

    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    array-length v6, v6

    const-string v7, "QSCarrierGroup"

    if-ne v5, v6, :cond_5

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_3

    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v6, v6, v5

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSCarrierGroup;->getSlotIndex(I)I

    move-result v6

    if-lt v6, v3, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateInfoCarrier - slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid SIM slot index for subscription: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v8, v8, v6

    iput-boolean v4, v8, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    aput-boolean v4, v2, v6

    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v8, v8, v6

    iget-object v9, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    aget-object v9, v9, v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v6, v8, v6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_2
    if-ge p1, v3, :cond_7

    aget-boolean v4, v2, p1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v4, v4, p1

    iput-boolean v0, v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v4, v4, p1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "Carrier information arrays not of same length"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v0

    iput-boolean v0, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v2, v2, v0

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    if-ge v4, v3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p1, p1, v4

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method
