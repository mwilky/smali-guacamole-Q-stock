.class public final synthetic Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/VideoPreference;

.field private final synthetic f$1:Landroid/widget/ImageView;

.field private final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$0:Lcom/android/settings/widget/VideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$0:Lcom/android/settings/widget/VideoPreference;

    iget-object v1, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;->f$2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/widget/VideoPreference;->lambda$onBindViewHolder$0$VideoPreference(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
