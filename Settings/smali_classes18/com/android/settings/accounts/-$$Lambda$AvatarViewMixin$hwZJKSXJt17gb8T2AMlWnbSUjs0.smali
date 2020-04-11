.class public final synthetic Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/accounts/AvatarViewMixin;

.field private final synthetic f$1:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accounts/AvatarViewMixin;Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;->f$0:Lcom/android/settings/accounts/AvatarViewMixin;

    iput-object p2, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;->f$1:Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;->f$0:Lcom/android/settings/accounts/AvatarViewMixin;

    iget-object v1, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;->f$1:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AvatarViewMixin;->lambda$new$0$AvatarViewMixin(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/view/View;)V

    return-void
.end method
