.class Lcom/oneplus/settings/ui/OPCustomTonePreference$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0550

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/RadiusImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
