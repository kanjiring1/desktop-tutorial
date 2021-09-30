Xin chào {{ $demo->receiver }},
Website {{ $demo->url }} vừa được truy cập, thông tin địa chỉ IP như sau.
Tên bài viết: {{$demo->ip->article->title}}
IP:port: {{$demo->ip->ip}}:{{$demo->ip->port}}
Loại IP: {{$demo->ip->IPtype}}
Nhà cung cấp dịch vụ: {{$demo->ip->asn}}  {{$demo->ip->org}}  {{$demo->ip->isp}}
Quốc gia: {{$demo->ip->country}}
Tỉnh/thành phố: {{$demo->ip->region}}
Huyện/thị xã/thành phố: {{$demo->ip->city}}
Kinh độ/Vĩ độ: {{$demo->ip->lat}},{{$demo->ip->long}}
Proxy: {{$demo->ip->proxy}}
Tên thiết bị: {{$demo->ip->device}}
Ngôn ngữ trình duyệt: {{$demo->ip->browserlang}}
Thông tin sever: {{$demo->ip->severinfo}}
Thời gian: {{$demo->ip->created_at}}

Cảm ơn đã quan tâm,
{{ $demo->sender }}