.class final Landroidx/preference/ExpandButton;
.super Landroidx/preference/Preference;
.source "ExpandButton.java"


# instance fields
.field private mId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroidx/preference/ExpandButton;->initLayout()V

    invoke-direct {p0, p2}, Landroidx/preference/ExpandButton;->setSummary(Ljava/util/List;)V

    const-wide/32 v0, 0xf4240

    add-long/2addr v0, p3

    iput-wide v0, p0, Landroidx/preference/ExpandButton;->mId:J

    return-void
.end method

.method private initLayout()V
    .locals 1

    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setLayoutResource(I)V

    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setIcon(I)V

    const v0, 0x7f1206fa

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setTitle(I)V

    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setOrder(I)V

    return-void
.end method

.method private setSummary(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v3

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1215c6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getId()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/ExpandButton;->mId:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
