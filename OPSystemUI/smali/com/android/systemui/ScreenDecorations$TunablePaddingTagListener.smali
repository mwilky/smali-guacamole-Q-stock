.class Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TunablePaddingTagListener"
.end annotation


# instance fields
.field private final mId:I

.field private final mPadding:I

.field private mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mPadding:I

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mId:I

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/tuner/TunablePadding;->destroy()V

    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mId:I

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_1
    iget p2, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mPadding:I

    const/4 v0, 0x3

    const-string v1, "sysui_rounded_content_padding"

    invoke-static {p1, v1, p2, v0}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    return-void
.end method
