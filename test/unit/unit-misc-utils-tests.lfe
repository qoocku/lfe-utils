(defmodule unit-misc-utils-tests
  (export all)
  (import
    (from lfe-utils
      (add-tuples 1) (add-tuples 2)
      (color-scale 2)
      (dot-product 2)
      (fast-floor 1)
      (round 2)
      (scale 3)
      (unit-scale 2)
      (uuid4 0) (uuid4 1)
      (partition-list 1)
      (pair-dict 1))
    (from lfeunit-util
      (check-failed-is 2)
      (check-wrong-is-exception 2))))

(include-lib "deps/lfeunit/include/lfeunit-macros.lfe")

(deftest uuid4
  (is-equal 36 (byte_size (uuid4)))
  (is-equal 288 (bit_size (uuid4)))
  (is (is_binary (uuid4)))
  (is-equal 36 (byte_size (uuid4 (tuple 'type 'binary))))
  (is-equal 288 (bit_size (uuid4 (tuple 'type 'binary))))
  (is (is_binary (uuid4 (tuple 'type 'binary))))
  (is-not (is_binary (uuid4 (tuple 'type 'list))))
  (is-equal 36 (length (uuid4 (tuple 'type 'list))))
  (is (is_list (uuid4 (tuple 'type 'list))))
  (is-not (is_list (uuid4 (tuple 'type 'binary))))
  (is (is_atom (uuid4 (tuple 'type 'atom))))
  (is-not (is_atom (uuid4 (tuple 'type 'list)))))
