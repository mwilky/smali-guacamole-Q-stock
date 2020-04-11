.class public final synthetic Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$mB5LS5stVtWy9PDGPAEsAQHcm4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$mB5LS5stVtWy9PDGPAEsAQHcm4c;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$mB5LS5stVtWy9PDGPAEsAQHcm4c;->f$0:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;->lambda$new$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
