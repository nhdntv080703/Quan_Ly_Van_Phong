CREATE TABLE `assignmentbuilding` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `buildingid` bigint(20) DEFAULT NULL,
  `staffid` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `assignmentbuilding`
--

INSERT INTO `assignmentbuilding` (`id`, `createdby`, `createddate`, `modifiedby`, `modifieddate`, `buildingid`, `staffid`) VALUES
(1, NULL, NULL, NULL, NULL, 1, 2),
(2, NULL, NULL, NULL, NULL, 2, 3),
(3, NULL, NULL, NULL, NULL, 3, 2),
(4, NULL, NULL, NULL, NULL, 4, 3),
(5, NULL, NULL, NULL, NULL, 5, 2),
(6, NULL, NULL, NULL, NULL, 7, 3),
(7, NULL, NULL, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `building`
--

CREATE TABLE `building` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numberofbasement` int(11) DEFAULT NULL,
  `brokeragefee` varchar(255) DEFAULT NULL,
  `carfee` varchar(255) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `district` bigint(20) DEFAULT NULL,
  `electricityfee` varchar(255) DEFAULT NULL,
  `floorarea` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `motorbikefee` varchar(255) DEFAULT NULL,
  `overtimefee` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rent_areadescription` varchar(255) DEFAULT NULL,
  `rentprice` int(11) DEFAULT NULL,
  `servicefee` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `waterfee` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `building`
--

INSERT INTO `building` (`id`, `createdby`, `createddate`, `modifiedby`, `modifieddate`, `name`, `numberofbasement`, `brokeragefee`, `carfee`, `createdate`, `deposit`, `district`, `electricityfee`, `floorarea`, `fullname`, `motorbikefee`, `overtimefee`, `payment`, `phone`, `rent_areadescription`, `rentprice`, `servicefee`, `street`, `ward`, `waterfee`) VALUES
(1, NULL, NULL, NULL, NULL, 'tòa nhà 1', 20, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, 'tòa nhà 2', 10, NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL),
(3, 'admin', '2023-03-10 14:17:17', 'admin', '2023-03-10 14:17:17', 'tòa nhà 3', 18, NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL),
(4, 'admin', '2023-03-10 14:21:49', 'admin', '2023-03-10 14:21:49', 'tòa nhà 4', 15, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL),
(5, 'admin', '2023-03-10 14:21:55', 'admin', '2023-03-10 14:21:55', 'tòa nhà 5', 25, NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL),
(7, 'admin', '2023-03-11 10:43:36', 'admin', '2023-03-11 10:43:36', 'hoang dung', 2, NULL, NULL, NULL, NULL, NULL, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rentarea`
--

CREATE TABLE `rentarea` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `buildingid` bigint(20) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rentarea`
--

INSERT INTO `rentarea` (`id`, `createdby`, `createddate`, `modifiedby`, `modifieddate`, `buildingid`, `value`) VALUES
(1, NULL, NULL, NULL, NULL, 1, '200'),
(2, NULL, NULL, NULL, NULL, 1, '300'),
(3, NULL, NULL, NULL, NULL, 1, '100'),
(4, NULL, NULL, NULL, NULL, 2, '150'),
(5, NULL, NULL, NULL, NULL, 2, '250'),
(6, NULL, NULL, NULL, NULL, 3, '120'),
(7, NULL, NULL, NULL, NULL, 4, '100'),
(8, NULL, NULL, NULL, NULL, 4, '210'),
(9, NULL, NULL, NULL, NULL, 4, '280'),
(10, NULL, NULL, NULL, NULL, 5, '50'),
(11, NULL, NULL, NULL, NULL, 5, '180'),
(12, NULL, NULL, NULL, NULL, 7, '400');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `createdby`, `createddate`, `modifiedby`, `modifieddate`, `code`, `name`) VALUES
(1, NULL, NULL, NULL, NULL, 'ADMIN', 'Quản trị hệ thống'),
(2, NULL, NULL, NULL, NULL, 'USER', 'người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `createdby`, `createddate`, `modifiedby`, `modifieddate`, `email`, `fullname`, `password`, `status`, `username`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'admin', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 1, 'admin'),
(2, NULL, NULL, NULL, NULL, NULL, 'nguyen van a', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 1, 'nguyenvana'),
(3, NULL, NULL, NULL, NULL, NULL, 'nguyen van b', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 1, 'nguyenvanb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `assignmentbuilding`
--
ALTER TABLE `assignmentbuilding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lien_ket_building` (`buildingid`),
  ADD KEY `lien_ket_user` (`staffid`);

--
-- Chỉ mục cho bảng `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rentarea`
--
ALTER TABLE `rentarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lien_ket_building` (`buildingid`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c36say97xydpmgigg38qv5l2p` (`code`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `assignmentbuilding`
--
ALTER TABLE `assignmentbuilding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `building`
--
ALTER TABLE `building`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `rentarea`
--
ALTER TABLE `rentarea`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;