.class Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field imageView:Lcom/oneplus/settings/ui/RadiusImageView;

.field imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0150

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    const v0, 0x7f0a0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    return-void
.end method
