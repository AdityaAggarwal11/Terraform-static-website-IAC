document.querySelector('#panel1 img').animate([
  { transform: 'translateX(0)' },
  { transform: 'translateX(20px)' }
], {
  duration: 1000,
  iterations: Infinity,
  direction: 'alternate'
});

document.getElementById('deployBtn').addEventListener('click', () => {
  const output = `
Terraform v1.6.0
Initializing provider plugins...
Planning complete. Resources to add: 2, change: 0, destroy: 0

Apply complete! Resources: 2 added.
  - aws_s3_bucket.my_bucket
  - aws_instance.web_server
`;
  document.getElementById('mockOutput').textContent = output;
});

console.log("Terraform Tales loaded!");