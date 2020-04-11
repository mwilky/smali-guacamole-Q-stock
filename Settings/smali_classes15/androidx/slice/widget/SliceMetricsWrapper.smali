.class Landroidx/slice/widget/SliceMetricsWrapper;
.super Landroidx/slice/widget/SliceMetrics;
.source "SliceMetricsWrapper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mSliceMetrics:Landroid/app/slice/SliceMetrics;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/slice/widget/SliceMetrics;-><init>()V

    new-instance v0, Landroid/app/slice/SliceMetrics;

    invoke-direct {v0, p1, p2}, Landroid/app/slice/SliceMetrics;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    return-void
.end method


# virtual methods
.method protected logHidden()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logHidden()V

    return-void
.end method

.method protected logTouch(ILandroid/net/Uri;)V
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    return-void
.end method

.method protected logVisible()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logVisible()V

    return-void
.end method
