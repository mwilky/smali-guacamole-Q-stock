.class Lcom/android/systemui/egg/MLand$Stem$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Stem;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/MLand$Stem;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Stem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem$1;->this$1:Lcom/android/systemui/egg/MLand$Stem;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem$1;->this$1:Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/egg/MLand$Stem$1;->this$1:Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
