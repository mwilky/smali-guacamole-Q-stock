.class public interface abstract Landroidx/slice/core/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# virtual methods
.method public abstract getAction()Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getContentDescription()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageMode()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isActivity()Z
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isDefaultToggle()Z
.end method

.method public abstract isToggle()Z
.end method

.method public abstract setChecked(Z)Landroidx/slice/core/SliceAction;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceAction;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setPriority(I)Landroidx/slice/core/SliceAction;
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method
