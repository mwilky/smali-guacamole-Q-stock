.class Lcom/oneplus/settings/ui/OPCustomShapePreference$1;
.super Lcom/android/internal/widget/PagerAdapter;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
