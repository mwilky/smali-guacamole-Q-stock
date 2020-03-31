.class public Lcom/oneplus/lib/widget/button/OPRadioGroup;
.super Landroid/widget/LinearLayout;
.source "OPRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;,
        Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup:[I

    const v3, 0x101007e

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup_android_checkedButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPRadioGroup_android_orientation:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/button/OPRadioGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mChildOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    invoke-interface {p1, p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    instance-of v0, p1, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    iget v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup;->mPassThroughListener:Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
