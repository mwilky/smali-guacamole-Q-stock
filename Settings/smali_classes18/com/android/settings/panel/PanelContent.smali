.class public interface abstract Lcom/android/settings/panel/PanelContent;
.super Ljava/lang/Object;
.source "PanelContent.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# virtual methods
.method public abstract getSeeMoreIntent()Landroid/content/Intent;
.end method

.method public abstract getSlices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
