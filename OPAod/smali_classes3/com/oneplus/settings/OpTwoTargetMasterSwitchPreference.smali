.class public Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;
.super Lcom/oneplus/lib/widget/preference/OPPreference;
.source "OpTwoTargetMasterSwitchPreference.java"


# static fields
.field private static final VIBRATOR_SCENE_SWITCH:I = 0x3eb


# instance fields
.field private mChecked:Z

.field private mEnabled:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setLayoutResource(I)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setWidgetLayoutResource(I)V

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private isBlackTheme(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/oneplus/aod/Utils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;-><init>(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->isBlackTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v1, :cond_2

    if-eqz v4, :cond_1

    const v5, 0x7f05020c

    goto :goto_0

    :cond_1
    const v5, 0x7f05020d

    :goto_0
    nop

    iget-boolean v6, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mEnabled:Z

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    const v5, 0x7f05020a

    goto :goto_1

    :cond_3
    const v5, 0x7f05020b

    :goto_1
    nop

    iget-boolean v6, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mEnabled:Z

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const v5, 0x7f0800c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mChecked:Z

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v6, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_5
    const v5, 0x7f080095

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;-><init>(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mChecked:Z

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->mEnabled:Z

    return-void
.end method
