.class Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "OPCheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPCheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPCheckableImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;->this$0:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
