
#import "SCPostDetailViewController.h"
#import "SCPost.h"
#import "UIImageView+AFNetworking.h"

@interface SCPostDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextView *postView;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *postImageView;
@property (strong, nonatomic) SCPost *post;

@end

@implementation SCPostDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    self.postView.text = self.post.message;
    self.usernameLabel.text = self.post.name;
    [self.postImageView setImageWithURL:[NSURL URLWithString:self.post.imageURL]];
}

- (void)setupUI
{
    self.title = NSLocalizedString(@"Detail", nil);
    self.postImageView.layer.masksToBounds = YES;
    self.postImageView.layer.cornerRadius = 5.0;
}


- (void)loadDetailViewWithPost:(SCPost *)post
{
    self.post = post;
}

@end

