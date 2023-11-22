
insert into User (name, email, password, nickname, birthday, level)
VALUES ("김씨","asdf@asdf.com","asdf","파이리","1998-12-02","초보"),
       ("이씨","qwer@asdf.com","asdf","꼬부기","1993-05-22","중수"),
       ("박씨","zxcv@asdf.com","asdf","이상해씨","1988-01-01","고수");

insert into User (name, email, password, nickname, birthday, level)
VALUES ("아무나","asdf","asdf","피카츄","1998-12-02","고수");

INSERT INTO Post (title, content, user_id, content_type, level, url, likeCnt)
SELECT
    CONCAT('제목', number) as title,
    CONCAT('내용', number) as content,
    FLOOR(1 + RAND() * 4) as user_id,
    CASE
        WHEN number % 3 = 0 THEN '후기'
        WHEN number % 3 = 1 THEN '영상 추천'
        WHEN number % 3 = 2 THEN 'honey팁'
        END as content_type,
    CASE
        WHEN number % 3 = 0 THEN '초보'
        WHEN number % 3 = 1 THEN '중수'
        WHEN number % 3 = 2 THEN '고수'
        END as level,
    NULL as url,
    0 as likeCnt
FROM
    (SELECT 1 as number UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
     UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
     UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
     UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20) AS numbers;

insert into Video (url, level)
VALUES ("https://www.youtube.com/embed/Ueb365f-bY0","초보"),
       ("https://www.youtube.com/embed/ytYwVE82O3M","초보"),
       ("https://www.youtube.com/embed/W4SpM2gxGdE","초보"),
       ("https://www.youtube.com/embed/5Yk7zBBpA8Q","초보"),
       ("https://www.youtube.com/embed/zruKSHfD7b4","중수"),
       ("https://www.youtube.com/embed/MIBZyaGloH4","중수"),
       ("https://www.youtube.com/embed/A5MzlPgNcJM","중수"),
       ("https://www.youtube.com/embed/dabI9cnwtMQ","고수"),
       ("https://www.youtube.com/embed/6dQXJsMSd4Y","고수"),
       ("https://www.youtube.com/embed/AHtaxsiLSCc","고수"),
       ("https://www.youtube.com/embed/lU9IG1_3L9g","고수");

INSERT INTO Record (user_id, date, time, video_id)
SELECT
    FLOOR(1 + RAND() * 4) as user_id,
    DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * (DATEDIFF(NOW(), '2023-01-01') + 1)) DAY) as date,
    TIME_FORMAT(SEC_TO_TIME(RAND() * 3 * 60 * 60), '%H:%i:%s') as time,
    FLOOR(1 + RAND() * 11) as video_id
FROM (SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6
      UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12
      UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION SELECT 18
      UNION SELECT 19 UNION SELECT 20 UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24
      UNION SELECT 25 UNION SELECT 26 UNION SELECT 27 UNION SELECT 28 UNION SELECT 29 UNION SELECT 30
      UNION SELECT 31 UNION SELECT 32 UNION SELECT 33 UNION SELECT 34 UNION SELECT 35 UNION SELECT 36
      UNION SELECT 37 UNION SELECT 38 UNION SELECT 39 UNION SELECT 40 UNION SELECT 41 UNION SELECT 42
      UNION SELECT 43 UNION SELECT 44 UNION SELECT 45 UNION SELECT 46 UNION SELECT 47 UNION SELECT 48
      UNION SELECT 49 UNION SELECT 50 UNION SELECT 51 UNION SELECT 52 UNION SELECT 53 UNION SELECT 54
      UNION SELECT 55 UNION SELECT 56 UNION SELECT 57 UNION SELECT 58 UNION SELECT 59 UNION SELECT 60
      UNION SELECT 61 UNION SELECT 62 UNION SELECT 63 UNION SELECT 64 UNION SELECT 65 UNION SELECT 66
      UNION SELECT 67 UNION SELECT 68 UNION SELECT 69 UNION SELECT 70 UNION SELECT 71 UNION SELECT 72
      UNION SELECT 73 UNION SELECT 74 UNION SELECT 75 UNION SELECT 76 UNION SELECT 77 UNION SELECT 78
      UNION SELECT 79 UNION SELECT 80 UNION SELECT 81 UNION SELECT 82 UNION SELECT 83 UNION SELECT 84
      UNION SELECT 85 UNION SELECT 86 UNION SELECT 87 UNION SELECT 88 UNION SELECT 89 UNION SELECT 90
      UNION SELECT 91 UNION SELECT 92 UNION SELECT 93 UNION SELECT 94 UNION SELECT 95 UNION SELECT 96
      UNION SELECT 97 UNION SELECT 98 UNION SELECT 99 UNION SELECT 100 UNION SELECT 101 UNION SELECT 102
      UNION SELECT 103 UNION SELECT 104 UNION SELECT 105 UNION SELECT 106 UNION SELECT 107 UNION SELECT 108
      UNION SELECT 109 UNION SELECT 110 UNION SELECT 111 UNION SELECT 112 UNION SELECT 113 UNION SELECT 114
      UNION SELECT 115 UNION SELECT 116 UNION SELECT 117 UNION SELECT 118 UNION SELECT 119 UNION SELECT 120
      UNION SELECT 121 UNION SELECT 122 UNION SELECT 123 UNION SELECT 124 UNION SELECT 125 UNION SELECT 126
      UNION SELECT 127 UNION SELECT 128 UNION SELECT 129 UNION SELECT 130 UNION SELECT 131 UNION SELECT 132
      UNION SELECT 133 UNION SELECT 134 UNION SELECT 135 UNION SELECT 136 UNION SELECT 137 UNION SELECT 138
      UNION SELECT 139 UNION SELECT 140 UNION SELECT 141 UNION SELECT 142 UNION SELECT 143 UNION SELECT 144
      UNION SELECT 145 UNION SELECT 146 UNION SELECT 147 UNION SELECT 148 UNION SELECT 149 UNION SELECT 150
      UNION SELECT 151 UNION SELECT 152 UNION SELECT 153 UNION SELECT 154 UNION SELECT 155 UNION SELECT 156
      UNION SELECT 157 UNION SELECT 158 UNION SELECT 159 UNION SELECT 160 UNION SELECT 161 UNION SELECT 162
      UNION SELECT 163 UNION SELECT 164 UNION SELECT 165 UNION SELECT 166 UNION SELECT 167 UNION SELECT 168
      UNION SELECT 169 UNION SELECT 170 UNION SELECT 171 UNION SELECT 172 UNION SELECT 173 UNION SELECT 174
      UNION SELECT 175 UNION SELECT 176 UNION SELECT 177 UNION SELECT 178 UNION SELECT 179 UNION SELECT 180
      UNION SELECT 181 UNION SELECT 182 UNION SELECT 183 UNION SELECT 184 UNION SELECT 185 UNION SELECT 186
      UNION SELECT 187 UNION SELECT 188 UNION SELECT 189 UNION SELECT 190 UNION SELECT 191 UNION SELECT 192
      UNION SELECT 193 UNION SELECT 194 UNION SELECT 195 UNION SELECT 196 UNION SELECT 197 UNION SELECT 198
      UNION SELECT 199 UNION SELECT 200 UNION SELECT 201 UNION SELECT 202 UNION SELECT 203 UNION SELECT 204
      UNION SELECT 205 UNION SELECT 206 UNION SELECT 207 UNION SELECT 208 UNION SELECT 209 UNION SELECT 210
      UNION SELECT 211 UNION SELECT 212 UNION SELECT 213 UNION SELECT 214 UNION SELECT 215 UNION SELECT 216
      UNION SELECT 217 UNION SELECT 218 UNION SELECT 219 UNION SELECT 220 UNION SELECT 221 UNION SELECT 222
      UNION SELECT 223 UNION SELECT 224 UNION SELECT 225 UNION SELECT 226 UNION SELECT 227 UNION SELECT 228
      UNION SELECT 229 UNION SELECT 230 UNION SELECT 231 UNION SELECT 232 UNION SELECT 233 UNION SELECT 234
      UNION SELECT 235 UNION SELECT 236 UNION SELECT 237 UNION SELECT 238 UNION SELECT 239 UNION SELECT 240
      UNION SELECT 241 UNION SELECT 242 UNION SELECT 243 UNION SELECT 244 UNION SELECT 245 UNION SELECT 246
      UNION SELECT 247 UNION SELECT 248 UNION SELECT 249 UNION SELECT 250 UNION SELECT 251 UNION SELECT 252
      UNION SELECT 253 UNION SELECT 254 UNION SELECT 255 UNION SELECT 256 UNION SELECT 257 UNION SELECT 258
      UNION SELECT 259 UNION SELECT 260 UNION SELECT 261 UNION SELECT 262 UNION SELECT 263 UNION SELECT 264
      UNION SELECT 265 UNION SELECT 266 UNION SELECT 267 UNION SELECT 268 UNION SELECT 269 UNION SELECT 270
      UNION SELECT 271 UNION SELECT 272 UNION SELECT 273 UNION SELECT 274 UNION SELECT 275 UNION SELECT 276
      UNION SELECT 277 UNION SELECT 278 UNION SELECT 279 UNION SELECT 280 UNION SELECT 281 UNION SELECT 282
      UNION SELECT 283 UNION SELECT 284 UNION SELECT 285 UNION SELECT 286 UNION SELECT 287 UNION SELECT 288
      UNION SELECT 289 UNION SELECT 290 UNION SELECT 291 UNION SELECT 292 UNION SELECT 293 UNION SELECT 294
      UNION SELECT 295 UNION SELECT 296 UNION SELECT 297 UNION SELECT 298 UNION SELECT 299 UNION SELECT 300
      UNION SELECT 301 UNION SELECT 302 UNION SELECT 303 UNION SELECT 304 UNION SELECT 305 UNION SELECT 306
      UNION SELECT 307 UNION SELECT 308 UNION SELECT 309 UNION SELECT 310 UNION SELECT 311 UNION SELECT 312
      UNION SELECT 313 UNION SELECT 314 UNION SELECT 315 UNION SELECT 316 UNION SELECT 317 UNION SELECT 318
      UNION SELECT 319 UNION SELECT 320 UNION SELECT 321 UNION SELECT 322 UNION SELECT 323 UNION SELECT 324
      UNION SELECT 325 UNION SELECT 326 UNION SELECT 327 UNION SELECT 328 UNION SELECT 329 UNION SELECT 330
      UNION SELECT 331 UNION SELECT 332 UNION SELECT 333 UNION SELECT 334 UNION SELECT 335 UNION SELECT 336
      UNION SELECT 337 UNION SELECT 338 UNION SELECT 339 UNION SELECT 340 UNION SELECT 341 UNION SELECT 342
      UNION SELECT 343 UNION SELECT 344 UNION SELECT 345 UNION SELECT 346 UNION SELECT 347 UNION SELECT 348
      UNION SELECT 349 UNION SELECT 350 UNION SELECT 351 UNION SELECT 352 UNION SELECT 353 UNION SELECT 354
      UNION SELECT 355 UNION SELECT 356 UNION SELECT 357 UNION SELECT 358 UNION SELECT 359 UNION SELECT 360
      UNION SELECT 361 UNION SELECT 362 UNION SELECT 363 UNION SELECT 364 UNION SELECT 365 UNION SELECT 366
      UNION SELECT 367 UNION SELECT 368 UNION SELECT 369 UNION SELECT 370 UNION SELECT 371 UNION SELECT 372
      UNION SELECT 373 UNION SELECT 374 UNION SELECT 375 UNION SELECT 376 UNION SELECT 377 UNION SELECT 378
      UNION SELECT 379 UNION SELECT 380 UNION SELECT 381 UNION SELECT 382 UNION SELECT 383 UNION SELECT 384
      UNION SELECT 385 UNION SELECT 386 UNION SELECT 387 UNION SELECT 388 UNION SELECT 389 UNION SELECT 390
      UNION SELECT 391 UNION SELECT 392 UNION SELECT 393 UNION SELECT 394 UNION SELECT 395 UNION SELECT 396
      UNION SELECT 397 UNION SELECT 398 UNION SELECT 399 UNION SELECT 400 UNION SELECT 401 UNION SELECT 402
      UNION SELECT 403 UNION SELECT 404 UNION SELECT 405 UNION SELECT 406 UNION SELECT 407 UNION SELECT 408
      UNION SELECT 409 UNION SELECT 410 UNION SELECT 411 UNION SELECT 412 UNION SELECT 413 UNION SELECT 414
      UNION SELECT 415 UNION SELECT 416 UNION SELECT 417 UNION SELECT 418 UNION SELECT 419 UNION SELECT 420
      UNION SELECT 421 UNION SELECT 422 UNION SELECT 423 UNION SELECT 424 UNION SELECT 425 UNION SELECT 426
      UNION SELECT 427 UNION SELECT 428 UNION SELECT 429 UNION SELECT 430 UNION SELECT 431 UNION SELECT 432
      UNION SELECT 433 UNION SELECT 434 UNION SELECT 435 UNION SELECT 436 UNION SELECT 437 UNION SELECT 438
      UNION SELECT 439 UNION SELECT 440 UNION SELECT 441 UNION SELECT 442 UNION SELECT 443 UNION SELECT 444
      UNION SELECT 445 UNION SELECT 446 UNION SELECT 447 UNION SELECT 448 UNION SELECT 449 UNION SELECT 450
      UNION SELECT 451 UNION SELECT 452 UNION SELECT 453 UNION SELECT 454 UNION SELECT 455 UNION SELECT 456
      UNION SELECT 457 UNION SELECT 458 UNION SELECT 459 UNION SELECT 460 UNION SELECT 461 UNION SELECT 462
      UNION SELECT 463 UNION SELECT 464 UNION SELECT 465 UNION SELECT 466 UNION SELECT 467 UNION SELECT 468
      UNION SELECT 469 UNION SELECT 470 UNION SELECT 471 UNION SELECT 472 UNION SELECT 473 UNION SELECT 474
      UNION SELECT 475 UNION SELECT 476 UNION SELECT 477 UNION SELECT 478 UNION SELECT 479 UNION SELECT 480
      UNION SELECT 481 UNION SELECT 482 UNION SELECT 483 UNION SELECT 484 UNION SELECT 485 UNION SELECT 486
      UNION SELECT 487 UNION SELECT 488 UNION SELECT 489 UNION SELECT 490 UNION SELECT 491 UNION SELECT 492
      UNION SELECT 493 UNION SELECT 494 UNION SELECT 495 UNION SELECT 496 UNION SELECT 497 UNION SELECT 498
      UNION SELECT 499 UNION SELECT 500) AS numbers
LIMIT 500;
