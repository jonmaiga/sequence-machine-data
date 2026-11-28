import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C048
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A165000: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165000, there is no canonical definition to state claims against.
-/

/-! ## A165000.P6325940733305275748

`filter[A164998(n+1), A011736(#)]`
-/

namespace A165000.P6325940733305275748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011736 (f1 j).toNat = 1) n)

end

end A165000.P6325940733305275748

/-!
# A165001: Length of cycle mentioned in A165000.

The programs for A165001, there is no canonical definition to state claims against.
-/

/-! ## A165001.P12922606963478052524

`A164999(lt[1, A164999(1+n)]+1)`
-/

namespace A165001.P12922606963478052524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165001.P12922606963478052524

/-! ## A165001.P1095295333246538969

`filter[A164999(n+1), A071178(A030099(#))]`
-/

namespace A165001.P1095295333246538969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A030099 (f1 j).toNat).toNat = 1) n)

end

end A165001.P1095295333246538969

/-! ## A165001.P7864182115799392893

`filter[A164999(n+1), A165018(A072982(#))]`
-/

namespace A165001.P7864182115799392893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165018 (A072982 (f1 j).toNat).toNat = 1) n)

end

end A165001.P7864182115799392893

/-!
# A165002: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives least elements of each cycle, including fixed points.

The programs for A165002, there is no canonical definition to state claims against.
-/

/-! ## A165002.P9421458412698878426

`∪[A164997(n+1), A165004(n+1)]`
-/

namespace A165002.P9421458412698878426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165002.P9421458412698878426

/-!
# A165003: Length of cycle mentioned in A165002.

The programs for A165003, there is no canonical definition to state claims against.
-/

/-! ## A165003.P1250136794295999979

`A336811(A004736(n+1)*A376934(n+1))`
-/

namespace A165003.P1250136794295999979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A004736 (n + 1) * A376934 (n + 1)).toNat

end

end A165003.P1250136794295999979

/-!
# A165004: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives least elements of each cycle of length > 1.

The programs for A165004, there is no canonical definition to state claims against.
-/

/-! ## A165004.P1312716047753576386

`A165002(record[(n+1)%(A165003(n+2)+n)]+1)`
-/

namespace A165004.P1312716047753576386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A165003 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A165004.P1312716047753576386

/-! ## A165004.P6031839468560706508

`∩[A165000(1+n), A165002(n+1)]`
-/

namespace A165004.P6031839468560706508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165000 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165004.P6031839468560706508

/-!
# A165005: Length of cycle mentioned in A165004.

The programs for A165005, there is no canonical definition to state claims against.
-/

/-! ## A165005.P3872667934265624961

`A165003(lt[1, A165003(n+1)]+1)`
-/

namespace A165005.P3872667934265624961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165005.P3872667934265624961

/-! ## A165005.P9104560089291544681

`filter[A165003(n+1), A189727(A006530(#))]`
-/

namespace A165005.P9104560089291544681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (A006530 (f1 j).toNat).toNat = 1) n)

end

end A165005.P9104560089291544681

/-! ## A165005.P5731961226438209865

`A000720(p?[A160656(A165003(n+1))])`
-/

namespace A165005.P5731961226438209865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A165003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165005.P5731961226438209865

/-! ## A165005.P5511427737340480795

`filter[A165003(n+1), A071178(A030099(#))]`
-/

namespace A165005.P5511427737340480795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A030099 (f1 j).toNat).toNat = 1) n)

end

end A165005.P5511427737340480795

/-!
# A165006: Number of cycles of n-digit numbers (including fixed points) under the base-3 Kaprekar map A164993.

The programs for A165006, there is no canonical definition to state claims against.
-/

/-! ## A165006.P6580091195407290050

`A189357(n)-A133819(2^n+2)%2`
-/

namespace A165006.P6580091195407290050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 n - Int.tmod (A133819 (2 ^ n + 2)) 2

end

end A165006.P6580091195407290050

/-! ## A165006.P6738422131148968231

`A099564(A342556(n))`
-/

namespace A165006.P6738422131148968231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099564 (A342556 n).toNat

end

end A165006.P6738422131148968231

/-! ## A165006.P1145095019313473042

`A099563(A287776(n+1)-char[2^n])`
-/

namespace A165006.P1145095019313473042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A287776 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A165006.P1145095019313473042

/-! ## A165006.P6742330093899025303

`A001222(or(A054977(n), A275521(n)))`
-/

namespace A165006.P6742330093899025303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A054977 n) (A275521 n)).toNat

end

end A165006.P6742330093899025303

/-! ## A165006.P8052320727042845954

`A023416(or(A049610(n), A260298(n+1)))`
-/

namespace A165006.P8052320727042845954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (A049610 n) (A260298 (n + 1))).toNat

end

end A165006.P8052320727042845954

/-!
# A165009: a(n) = smallest number that leads to a new cycle under the base-3 Kaprekar map of A164993.

The programs for A165009, there is no canonical definition to state claims against.
-/

/-! ## A165009.P7324535791749971824

`∑{p}[(2*n+1)!, C(3, #)^(n+2)]`
-/

namespace A165009.P7324535791749971824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p ^ (n + 2)

end

end A165009.P7324535791749971824

/-!
# A165011: Length of cycle corresponding to n-th term of A165009.

The programs for A165011, there is no canonical definition to state claims against.
-/

/-! ## A165011.P17597724568459447178

`gcd(A165003(A195098(n+1)), A185284(2*n+1))`
-/

namespace A165011.P17597724568459447178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165003 (A195098 (n + 1)).toNat) (A185284 (2 * n + 1))

end

end A165011.P17597724568459447178

/-! ## A165011.P767225027909100510

`A375378(A391685(n))`
-/

namespace A165011.P767225027909100510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375378 (A391685 n).toNat

end

end A165011.P767225027909100510

/-! ## A165011.P15969005571166856042

`A214684(A229870(n+1))`
-/

namespace A165011.P15969005571166856042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214684 (A229870 (n + 1)).toNat

end

end A165011.P15969005571166856042

/-! ## A165011.P9393474899137941121

`A223025(A167198(A001950(A038150(n))))`
-/

namespace A165011.P9393474899137941121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223025 (A167198 (A001950 (A038150 n).toNat).toNat).toNat

end

end A165011.P9393474899137941121

/-!
# A165012: a(n) = image of n under the base-4 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165012, there is no canonical definition to state claims against.
-/

/-! ## A165012.P3712640240558108577

`A055949(A319720(n))`
-/

namespace A165012.P3712640240558108577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (A319720 n).toNat

end

end A165012.P3712640240558108577

/-! ## A165012.P1311381328246293070

`A319720(n)-A319652(n)`
-/

namespace A165012.P1311381328246293070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n - A319652 n

end

end A165012.P1311381328246293070

/-! ## A165012.P18286625875557641710

`A319804(n)-2*A319652(n)`
-/

namespace A165012.P18286625875557641710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - 2 * A319652 n

end

end A165012.P18286625875557641710

/-! ## A165012.P16713710497672105949

`2*A319720(n)-A319804(n)`
-/

namespace A165012.P16713710497672105949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319720 n - A319804 n

end

end A165012.P16713710497672105949

/-! ## A165012.P7070443331694320204

`3*A165013(n)`
-/

namespace A165012.P7070443331694320204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165013 n

end

end A165012.P7070443331694320204

/-! ## A165012.P17385265584449740764

`A008585(A165013(n))`
-/

namespace A165012.P17385265584449740764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A165013 n).toNat

end

end A165012.P17385265584449740764

/-!
# A165013: a(n) = A165012(n)/3.

The programs for A165013, there is no canonical definition to state claims against.
-/

/-! ## A165013.P1899462641517109636

`A165012(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165013.P1899462641517109636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165012 n : ℚ) / 3

end

end A165013.P1899462641517109636

/-! ## A165013.P12928219582160341778

`A055949(A319720(n))/3`
-/

namespace A165013.P12928219582160341778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055949 (A319720 n).toNat : ℚ) / 3

end

end A165013.P12928219582160341778

/-! ## A165013.P5560505703916880117

`(A319720(n)-A319652(n))/3`
-/

namespace A165013.P5560505703916880117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319720 n - A319652 n : ℚ) / 3

end

end A165013.P5560505703916880117

/-! ## A165013.P6102902684118239188

`A002264(A165012(n))`
-/

namespace A165013.P6102902684118239188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A165012 n).toNat

end

end A165013.P6102902684118239188

/-! ## A165013.P7750141286650629659

`A008615(2*A165012(n))`
-/

namespace A165013.P7750141286650629659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A165012 n).toNat

end

end A165013.P7750141286650629659

/-! ## A165013.P14219059211896685949

`A112689(2*A165012(n))`
-/

namespace A165013.P14219059211896685949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A165012 n).toNat

end

end A165013.P14219059211896685949

/-!
# A165014: Length of preperiodic part of trajectory of n under iteration of the base-4 Kaprekar map in A165012.

The programs for A165014, there is no canonical definition to state claims against.
-/

/-! ## A165014.P7615356038918466434

`A072671(n)%A165015(n)`
-/

namespace A165014.P7615356038918466434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072671 n) (A165015 n)

end

end A165014.P7615356038918466434

/-! ## A165014.P13555299695329742051

`A002223(n+1)%A165015(n)`
-/

namespace A165014.P13555299695329742051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002223 (n + 1)) (A165015 n)

end

end A165014.P13555299695329742051

/-! ## A165014.P13428501721729109567

`A045535(n)%A165015(n)`
-/

namespace A165014.P13428501721729109567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045535 n) (A165015 n)

end

end A165014.P13428501721729109567

/-! ## A165014.P17851012471053258675

`A116606(n+1)%A165015(n)`
-/

namespace A165014.P17851012471053258675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116606 (n + 1)) (A165015 n)

end

end A165014.P17851012471053258675

/-!
# A165015: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-4 Kaprekar map in A165012.

The programs for A165015, there is no canonical definition to state claims against.
-/

/-! ## A165015.P1498693263772572938

`A285006(A285006(n+2)+1)+A165014(n)+1`
-/

namespace A165015.P1498693263772572938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A285006 (n + 2) + 1).toNat + (A165014 n + 1)

end

end A165015.P1498693263772572938

/-!
# A165016: Fixed points of the base-4 Kaprekar map A165012.

The programs for A165016, there is no canonical definition to state claims against.
-/

/-! ## A165016.P2042737487656679363

`A165021(eq[1, A165022(1+n)]+1)`
-/

namespace A165016.P2042737487656679363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A165016.P2042737487656679363

/-! ## A165016.P10967701133664167147

`A165017(record[(n+1)/A165018(n+1)])`
-/

namespace A165016.P10967701133664167147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165018 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165016.P10967701133664167147

/-! ## A165016.P151902103622269971

`record[(2-A165018(n+1))*A165017(n+1)]`
-/

namespace A165016.P151902103622269971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165018 (n + 1)) * A165017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165016.P151902103622269971

/-! ## A165016.P10887551614332237582

`record[(2-A165022(n+1))*A165021(n+1)]`
-/

namespace A165016.P10887551614332237582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165022 (n + 1)) * A165021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165016.P10887551614332237582

/-!
# A165017: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165017, there is no canonical definition to state claims against.
-/

/-! ## A165017.P16228338352381560731

`∪[A165016(n+1), A165019(n+1)]`
-/

namespace A165017.P16228338352381560731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165017.P16228338352381560731

/-! ## A165017.P1605857887399879967

`∪[A165019(n+1), A165021(n+1)]`
-/

namespace A165017.P1605857887399879967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165017.P1605857887399879967

/-! ## A165017.P11855275785135933676

`eq[n, A165012(A165012(n))]`
-/

namespace A165017.P11855275785135933676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165017.P11855275785135933676

/-! ## A165017.P16377521598037393370

`∪[A165012(A165021(n+1)), A165021(n+2)]`
-/

namespace A165017.P16377521598037393370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165021 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165017.P16377521598037393370

/-!
# A165020: Length of cycle mentioned in A165019.

The programs for A165020, the canonical program `A165020.P5387324205332587883` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165020 has offset 1).

The definition of A165020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165020.P5387324205332587883

`ceil(cosh(acot(acot(n))))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A165020

/-- `ceil(cosh(acot(acot(n))))` -/
def P5387324205332587883.Spec : Prop :=
  ∀ n, P5387324205332587883.a n = A165020 (n + 1)

theorem P5387324205332587883.correct : P5387324205332587883.Spec := by
  intro n
  simp only [A165020, Nat.add_sub_cancel]

end A165020

/-!
# A165021: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives least elements of each cycle, including fixed points.

The programs for A165021, there is no canonical definition to state claims against.
-/

/-! ## A165021.P11006969077971303034

`∪[A165016(n+1), A165023(n+1)]`
-/

namespace A165021.P11006969077971303034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165021.P11006969077971303034

/-! ## A165021.P10836208960137217714

`A165017(lt[A004137(2*(n+1)), A124324(3*n+4)])`
-/

namespace A165021.P10836208960137217714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165021.P10836208960137217714

/-!
# A165022: Length of cycle mentioned in A165021.

The programs for A165022, there is no canonical definition to state claims against.
-/

/-! ## A165022.P13147817147668263120

`gcd(A007953(A156552(n+1)), A026479(n+1))`
-/

namespace A165022.P13147817147668263120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (A156552 (n + 1)).toNat) (A026479 (n + 1))

end

end A165022.P13147817147668263120

/-! ## A165022.P11886415001122883080

`A095771(A064548(n+1)+1)`
-/

namespace A165022.P11886415001122883080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095771 (A064548 (n + 1) + 1).toNat

end

end A165022.P11886415001122883080

/-! ## A165022.P1945229073488744016

`A071178(A010440(n+3)+10*n)`
-/

namespace A165022.P1945229073488744016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A010440 (n + 3) + (10 * n : ℤ)).toNat

end

end A165022.P1945229073488744016

/-! ## A165022.P7755307328718421624

`gcd(A006530(A207088(n+1)), A347638(n+1))`
-/

namespace A165022.P7755307328718421624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A207088 (n + 1)).toNat) (A347638 (n + 1))

end

end A165022.P7755307328718421624

/-! ## A165022.P8985741282555997284

`A322299(gcd(A276625(2*n+5), A345872(n+3)))`
-/

namespace A165022.P8985741282555997284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (Int.gcd (A276625 (2 * n + 5)) (A345872 (n + 3)))

end

end A165022.P8985741282555997284

/-!
# A165023: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives least elements of each cycle of length > 1.

The programs for A165023, there is no canonical definition to state claims against.
-/

/-! ## A165023.P17637561094969569320

`A165019(comp[2*n+3]+n+1)`
-/

namespace A165023.P17637561094969569320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A165023.P17637561094969569320

/-! ## A165023.P16198151175291140339

`∩[A165019(n+1), A165021(n+1)]`
-/

namespace A165023.P16198151175291140339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165023.P16198151175291140339

/-!
# A165024: Length of cycle mentioned in A165023.

The programs for A165024, there is no canonical definition to state claims against.
-/

/-! ## A165024.P12796221350894559791

`round(ratio[cosh(n)])`
-/

namespace A165024.P12796221350894559791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)

end

end A165024.P12796221350894559791

/-!
# A165025: Number of cycles of n-digit numbers (including fixed points) under the base-4 Kaprekar map A165012.

The programs for A165025, the canonical program `A165025.P5266806650555374682` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165025 has offset 1).

The definition of A165025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165025.P5266806650555374682

`ogf((1-x^2+x^3-2x^6+3x^8-x^10)/(1-2x^2-x^3+x^4+2x^5-x^7))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A165025

/-- `ogf((1-x^2+x^3-2x^6+3x^8-x^10)/(1-2x^2-x^3+x^4+2x^5-x^7))` -/
def P5266806650555374682.Spec : Prop :=
  ∀ n, P5266806650555374682.a n = A165025 (n + 1)

theorem P5266806650555374682.correct : P5266806650555374682.Spec := by
  intro n
  simp only [A165025, Nat.add_sub_cancel]

end A165025

/-! ## A165025.P16675135735802995687

`floor((A165027(n+1)+A165026(n+1))/2)`
-/

namespace A165025.P16675135735802995687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165027 (n + 1) + A165026 (n + 1) : ℚ) / 2⌋

end

end A165025.P16675135735802995687

namespace A165025

/-- `floor((A165027(n+1)+A165026(n+1))/2)` -/
def P16675135735802995687.Spec : Prop :=
  ∀ n, P16675135735802995687.a n = A165025 (n + 1)

end A165025

/-! ## A165025.P4941714806609219399

`A004526(A165027(n+1)+A165026(n+1))`
-/

namespace A165025.P4941714806609219399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165027 (n + 1) + A165026 (n + 1)).toNat

end

end A165025.P4941714806609219399

namespace A165025

/-- `A004526(A165027(n+1)+A165026(n+1))` -/
def P4941714806609219399.Spec : Prop :=
  ∀ n, P4941714806609219399.a n = A165025 (n + 1)

end A165025

/-! ## A165025.P13741445573763384011

`A175126(A165027(n+1)+A165026(n+1))`
-/

namespace A165025.P13741445573763384011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A165027 (n + 1) + A165026 (n + 1)).toNat

end

end A165025.P13741445573763384011

namespace A165025

/-- `A175126(A165027(n+1)+A165026(n+1))` -/
def P13741445573763384011.Spec : Prop :=
  ∀ n, P13741445573763384011.a n = A165025 (n + 1)

end A165025

/-! ## A165025.P12349543395049817871

`A110654(A165027(n+1)+A165026(n+1)+1)-1`
-/

namespace A165025.P12349543395049817871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A165027 (n + 1) + A165026 (n + 1) + 1).toNat - 1

end

end A165025.P12349543395049817871

namespace A165025

/-- `A110654(A165027(n+1)+A165026(n+1)+1)-1` -/
def P12349543395049817871.Spec : Prop :=
  ∀ n, P12349543395049817871.a n = A165025 (n + 1)

end A165025

/-!
# A165027: Number of n-digit fixed points under the base-4 Kaprekar map A165012.

The programs for A165027, the canonical program `A165027.P6129569149110595286` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165027 has offset 1).

The definition of A165027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165027.P10536540210135651425

`ogf((1-x^2-x^4+2x^5+x^6-x^7)/(1-2x^2-x^3+x^4+2x^5-x^7))`
-/

namespace A165027.P10536540210135651425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, -1, 2, 1, -1] [1, 0, -2, -1, 1, 2, 0, -1] n

end

end A165027.P10536540210135651425

namespace A165027

/-- `ogf((1-x^2-x^4+2x^5+x^6-x^7)/(1-2x^2-x^3+x^4+2x^5-x^7))` -/
def P10536540210135651425.Spec : Prop :=
  ∀ n, P10536540210135651425.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P6129569149110595286

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=3, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A165027

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P6129569149110595286.Spec : Prop :=
  ∀ n, P6129569149110595286.a n = A165027 (n + 1)

theorem P6129569149110595286.correct : P6129569149110595286.Spec := by
  intro n
  simp only [A165027, Nat.add_sub_cancel]

end A165027

/-! ## A165027.P18084368578169993283

`A173857(1+n)+Δ[A008763(n)]`
-/

namespace A165027.P18084368578169993283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173857 (1 + n) + (f1 (n + 1) - f1 n)

end

end A165027.P18084368578169993283

namespace A165027

/-- `A173857(1+n)+Δ[A008763(n)]` -/
def P18084368578169993283.Spec : Prop :=
  ∀ n, P18084368578169993283.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P6810312683230673844

`Δ[A008763(n)+A008621(A024352(n+1))]`
-/

namespace A165027.P6810312683230673844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008621 (A024352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P6810312683230673844

namespace A165027

/-- `Δ[A008763(n)+A008621(A024352(n+1))]` -/
def P6810312683230673844.Spec : Prop :=
  ∀ n, P6810312683230673844.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P16871845076593400307

`Δ[A103221(A004277(n))+A008763(n)]`
-/

namespace A165027.P16871845076593400307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004277 n).toNat + A008763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P16871845076593400307

namespace A165027

/-- `Δ[A103221(A004277(n))+A008763(n)]` -/
def P16871845076593400307.Spec : Prop :=
  ∀ n, P16871845076593400307.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P10960475213671193860

`Δ[A008763(n)+A008615(A103517(n))]`
-/

namespace A165027.P10960475213671193860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008615 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P10960475213671193860

namespace A165027

/-- `Δ[A008763(n)+A008615(A103517(n))]` -/
def P10960475213671193860.Spec : Prop :=
  ∀ n, P10960475213671193860.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P9216488919701878812

`Δ[A008763(n)+A008615(A051755(n+2))]`
-/

namespace A165027.P9216488919701878812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008615 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P9216488919701878812

namespace A165027

/-- `Δ[A008763(n)+A008615(A051755(n+2))]` -/
def P9216488919701878812.Spec : Prop :=
  ∀ n, P9216488919701878812.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P6656936562644411168

`A065033(A008796(n+1))-A008615(n+1)`
-/

namespace A165027.P6656936562644411168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008796 (n + 1)).toNat - A008615 (n + 1)

end

end A165027.P6656936562644411168

namespace A165027

/-- `A065033(A008796(n+1))-A008615(n+1)` -/
def P6656936562644411168.Spec : Prop :=
  ∀ n, P6656936562644411168.a n = A165027 (n + 1)

end A165027

/-!
# A165029: a(n) = smallest number that leads to a new cycle under the base-4 Kaprekar map of A165012.

The programs for A165029, there is no canonical definition to state claims against.
-/

/-! ## A165029.P11612685627811115256

`A291763(A288125(2*n+3))+A000035(A000009(n+4))`
-/

namespace A165029.P11612685627811115256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291763 (A288125 (2 * n + 3)).toNat + A000035 (A000009 (n + 4)).toNat

end

end A165029.P11612685627811115256

/-! ## A165029.P12904279391985997856

`A358220(A204933(3*n+1))+A291763(A288125(2*n+3))`
-/

namespace A165029.P12904279391985997856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (A204933 (3 * n + 1)).toNat + A291763 (A288125 (2 * n + 3)).toNat

end

end A165029.P12904279391985997856

/-!
# A165030: Smallest member of cycle corresponding to n-th term of A165029.

The programs for A165030, there is no canonical definition to state claims against.
-/

/-! ## A165030.P1154351585596954553

`A165012(A165012(A165012(A165012(A165029(n+1)))))`
-/

namespace A165030.P1154351585596954553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165012 (A165012 (A165012 (A165029 (n + 1)).toNat).toNat).toNat).toNat

end

end A165030.P1154351585596954553

/-! ## A165030.P209979986084593956

`A165012(A258916(n)+A002981(3*(n+1)))`
-/

namespace A165030.P209979986084593956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A258916 n + A002981 (3 * (n + 1))).toNat

end

end A165030.P209979986084593956

/-!
# A165031: Length of cycle corresponding to n-th term of A165029.

The programs for A165031, there is no canonical definition to state claims against.
-/

/-! ## A165031.P5288504608593732206

`gcd(A082852(n), A390085(n+1))`
-/

namespace A165031.P5288504608593732206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082852 n) (A390085 (n + 1))

end

end A165031.P5288504608593732206

/-!
# A165032: a(n) = image of n under the base-5 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165032, there is no canonical definition to state claims against.
-/

/-! ## A165032.P6223806757530529534

`A319722(n)-A319653(n)`
-/

namespace A165032.P6223806757530529534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n - A319653 n

end

end A165032.P6223806757530529534

/-! ## A165032.P16539121299554028233

`A319805(n)-2*A319653(n)`
-/

namespace A165032.P16539121299554028233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - 2 * A319653 n

end

end A165032.P16539121299554028233

/-! ## A165032.P17757179633346293725

`2*A319722(n)-A319805(n)`
-/

namespace A165032.P17757179633346293725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319722 n - A319805 n

end

end A165032.P17757179633346293725

/-! ## A165032.P3475577317818564345

`A055951(A319722(n))`
-/

namespace A165032.P3475577317818564345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 (A319722 n).toNat

end

end A165032.P3475577317818564345

/-! ## A165032.P1701020203310097103

`4*A165033(n)`
-/

namespace A165032.P1701020203310097103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165033 n

end

end A165032.P1701020203310097103

/-! ## A165032.P5702224212187062707

`A008586(A165033(n))`
-/

namespace A165032.P5702224212187062707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165033 n).toNat

end

end A165032.P5702224212187062707

/-! ## A165032.P1533999828888831295

`A005843(A165033(n)+A165033(n))`
-/

namespace A165032.P1533999828888831295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165033 n + A165033 n).toNat

end

end A165032.P1533999828888831295

/-!
# A165033: a(n) = A165032(n)/4.

The programs for A165033, there is no canonical definition to state claims against.
-/

/-! ## A165033.P9465501459583428751

`A165032(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165033.P9465501459583428751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165032 n : ℚ) / 4

end

end A165033.P9465501459583428751

/-! ## A165033.P3585693270732584231

`A002265(A165032(n))`
-/

namespace A165033.P3585693270732584231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165032 n).toNat

end

end A165033.P3585693270732584231

/-! ## A165033.P9831560893875306047

`A008624(A165032(n)+1)`
-/

namespace A165033.P9831560893875306047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A165032 n + 1).toNat

end

end A165033.P9831560893875306047

/-! ## A165033.P506468791400845531

`A025480(A165032(n)+1)`
-/

namespace A165033.P506468791400845531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A165032 n + 1).toNat

end

end A165033.P506468791400845531

/-! ## A165033.P9371092123084206903

`A077814(A165032(n)+1)`
-/

namespace A165033.P9371092123084206903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A165032 n + 1).toNat

end

end A165033.P9371092123084206903

/-! ## A165033.P14851148330385370737

`A257844(A165032(n)+1)`
-/

namespace A165033.P14851148330385370737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A165032 n + 1).toNat

end

end A165033.P14851148330385370737

/-! ## A165033.P9584920915833953396

`A110657(A165032(n)+3)`
-/

namespace A165033.P9584920915833953396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A165032 n + 3).toNat

end

end A165033.P9584920915833953396

/-! ## A165033.P17438277190926658741

`A051724(3*A165032(n))`
-/

namespace A165033.P17438277190926658741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A165032 n).toNat

end

end A165033.P17438277190926658741

/-! ## A165033.P6432940480201913531

`(A319722(n)-A319653(n))/4`
-/

namespace A165033.P6432940480201913531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319722 n - A319653 n : ℚ) / 4

end

end A165033.P6432940480201913531

/-! ## A165033.P6724909539770770574

`A106617(4*A165032(n))`
-/

namespace A165033.P6724909539770770574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (4 * A165032 n).toNat

end

end A165033.P6724909539770770574

/-!
# A165034: Length of preperiodic part of trajectory of n under iteration of the base-5 Kaprekar map in A165032.

The programs for A165034, there is no canonical definition to state claims against.
-/

/-! ## A165034.P4768541464942891843

`A165035(n)-A329198(A356231(3*(n+1)))`
-/

namespace A165034.P4768541464942891843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165035 n - A329198 (A356231 (3 * (n + 1))).toNat

end

end A165034.P4768541464942891843

/-! ## A165034.P11746597851306496719

`A050966(n+1)%A165035(n)`
-/

namespace A165034.P11746597851306496719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050966 (n + 1)) (A165035 n)

end

end A165034.P11746597851306496719

/-! ## A165034.P16714733498806454772

`A138267(n+1)%A165035(n)`
-/

namespace A165034.P16714733498806454772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138267 (n + 1)) (A165035 n)

end

end A165034.P16714733498806454772

/-! ## A165034.P14889669335883970845

`A139431(n+1)%A165035(n)`
-/

namespace A165034.P14889669335883970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139431 (n + 1)) (A165035 n)

end

end A165034.P14889669335883970845

/-! ## A165034.P9905581085390002339

`A152181(n+1)%A165035(n)`
-/

namespace A165034.P9905581085390002339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152181 (n + 1)) (A165035 n)

end

end A165034.P9905581085390002339

/-!
# A165035: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-5 Kaprekar map in A165032.

The programs for A165035, there is no canonical definition to state claims against.
-/

/-! ## A165035.P11737414667367001874

`A165112(A000041(A164993(n)))+A165034(n)`
-/

namespace A165035.P11737414667367001874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 (A000041 (A164993 n).toNat).toNat + A165034 n

end

end A165035.P11737414667367001874

/-! ## A165035.P4872047039381063247

`A165413(A070876(n+1))`
-/

namespace A165035.P4872047039381063247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A070876 (n + 1)).toNat

end

end A165035.P4872047039381063247

/-! ## A165035.P5613347744869349475

`A106495(A146331(n+2))`
-/

namespace A165035.P5613347744869349475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A146331 (n + 2)).toNat

end

end A165035.P5613347744869349475

/-! ## A165035.P11766848751026128839

`A274354(A381246(n+2))`
-/

namespace A165035.P11766848751026128839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274354 (A381246 (n + 2)).toNat

end

end A165035.P11766848751026128839

/-!
# A165036: Fixed points of the base-5 Kaprekar map A165032.

The programs for A165036, there is no canonical definition to state claims against.
-/

/-! ## A165036.P17927017636524016270

`A165049(lt[A071626(3*n+5), A309612(3*n+4)])`
-/

namespace A165036.P17927017636524016270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309612 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165049 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165036.P17927017636524016270

/-!
# A165037: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165037, there is no canonical definition to state claims against.
-/

/-! ## A165037.P18094007647774004926

`∪[A165039(n+1), A165041(n+1)]`
-/

namespace A165037.P18094007647774004926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165037.P18094007647774004926

/-! ## A165037.P12884613374802877554

`eq[0, A165034(n)]`
-/

namespace A165037.P12884613374802877554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165037.P12884613374802877554

/-! ## A165037.P4393648381350835190

`2*lt[A165034(2*n), 1]`
-/

namespace A165037.P4393648381350835190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165037.P4393648381350835190

/-! ## A165037.P3301266306252159617

`lt[A165034(n), A060576(n)]`
-/

namespace A165037.P3301266306252159617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165037.P3301266306252159617

/-! ## A165037.P18427802677203975768

`A005843(lt[A165034(2*n), 1])`
-/

namespace A165037.P18427802677203975768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A165037.P18427802677203975768

/-!
# A165039: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165039, there is no canonical definition to state claims against.
-/

/-! ## A165039.P8370307921010314024

`A165037(A187829(n+1)+A165024(n+1))`
-/

namespace A165039.P8370307921010314024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A187829 (n + 1) + A165024 (n + 1)).toNat

end

end A165039.P8370307921010314024

/-! ## A165039.P18192065142219565357

`A165037(A165024(n+1)+A077168(n))`
-/

namespace A165039.P18192065142219565357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A165024 (n + 1) + A077168 n).toNat

end

end A165039.P18192065142219565357

/-! ## A165039.P4500665990149136763

`filter[A165037(n+2), A189706(#)]`
-/

namespace A165039.P4500665990149136763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j).toNat = 1) n)

end

end A165039.P4500665990149136763

/-! ## A165039.P12869841251255583377

`filter[A165037(n+2), A189723(#)]`
-/

namespace A165039.P12869841251255583377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j).toNat = 1) n)

end

end A165039.P12869841251255583377

/-!
# A165040: Length of cycle mentioned in A165039.

The programs for A165040, there is no canonical definition to state claims against.
-/

/-! ## A165040.P9090538667062203535

`filter[A165038(1+n), A354807(#)]`
-/

namespace A165040.P9090538667062203535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A165040.P9090538667062203535

/-! ## A165040.P6088545658268961361

`filter[A165038(n+1), A071178(A165077(#))]`
-/

namespace A165040.P6088545658268961361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165040.P6088545658268961361

/-! ## A165040.P17529665845090070314

`filter[A165038(n+1), A071178(A030099(#))]`
-/

namespace A165040.P17529665845090070314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A030099 (f1 j).toNat).toNat = 1) n)

end

end A165040.P17529665845090070314

/-! ## A165040.P1596070566846466309

`filter[A165038(n+1), A165022(A072982(#))]`
-/

namespace A165040.P1596070566846466309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165022 (A072982 (f1 j).toNat).toNat = 1) n)

end

end A165040.P1596070566846466309

/-! ## A165040.P18027160052308071677

`filter[A165038(n+1), A071178(A002805(#))]`
-/

namespace A165040.P18027160052308071677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A002805 (f1 j).toNat).toNat = 1) n)

end

end A165040.P18027160052308071677

/-! ## A165040.P10363099680155610078

`filter[A165038(n+1), A071178(A084218(#))]`
-/

namespace A165040.P10363099680155610078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A084218 (f1 j).toNat).toNat = 1) n)

end

end A165040.P10363099680155610078

/-!
# A165042: Length of cycle mentioned in A165041.

The programs for A165042, there is no canonical definition to state claims against.
-/

/-! ## A165042.P1247508343464055225

`xor(A165050(n+1), A309061(A098473(n)))`
-/

namespace A165042.P1247508343464055225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165050 (n + 1)) (A309061 (A098473 n).toNat)

end

end A165042.P1247508343464055225

/-! ## A165042.P8280985888423425763

`A165050(∑[A141689(A141689(n+1))])`
-/

namespace A165042.P8280985888423425763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (A141689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165042.P8280985888423425763

/-! ## A165042.P5750911485972818891

`A185284(A000009(n))+A165050(n+1)`
-/

namespace A165042.P5750911485972818891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000009 n).toNat + A165050 (n + 1)

end

end A165042.P5750911485972818891

/-! ## A165042.P6491515024919527424

`A185284(A182097(n))+A165050(n+1)`
-/

namespace A165042.P6491515024919527424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A182097 n).toNat + A165050 (n + 1)

end

end A165042.P6491515024919527424

/-! ## A165042.P4761947521645012192

`A165050(n+1)+A091247(A185284(2*(n+2)))`
-/

namespace A165042.P4761947521645012192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165050 (n + 1) + A091247 (A185284 (2 * (n + 2))).toNat

end

end A165042.P4761947521645012192

/-!
# A165043: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives least elements of each cycle of length > 1.

The programs for A165043, there is no canonical definition to state claims against.
-/

/-! ## A165043.P11688048873808546255

`∩[A165039(n+1), A165041(n+1)]`
-/

namespace A165043.P11688048873808546255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165043.P11688048873808546255

/-!
# A165044: Length of cycle mentioned in A165043.

The programs for A165044, there is no canonical definition to state claims against.
-/

/-! ## A165044.P729537887138289372

`A165042(lt[1, A165042(1+n)]+1)`
-/

namespace A165044.P729537887138289372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165044.P729537887138289372

/-! ## A165044.P8259610160520726073

`filter[A165042(n+1), A071178(A165077(#))]`
-/

namespace A165044.P8259610160520726073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165044.P8259610160520726073

/-! ## A165044.P6962416972371682212

`filter[A165042(n+3), A164980(A165077(#))]`
-/

namespace A165044.P6962416972371682212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165044.P6962416972371682212

/-! ## A165044.P8547615151719263638

`filter[A165042(n+1), A165018(A072982(#))]`
-/

namespace A165044.P8547615151719263638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165018 (A072982 (f1 j).toNat).toNat = 1) n)

end

end A165044.P8547615151719263638

/-!
# A165045: Number of cycles of n-digit numbers (including fixed points) under the base-5 Kaprekar map A165032.

The programs for A165045, there is no canonical definition to state claims against.
-/

/-! ## A165045.P3010063631382345752

`runs[floor(sqrt(A165048(n+1)))]`
-/

namespace A165045.P3010063631382345752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A165048 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A165045.P3010063631382345752

/-!
# A165048: a(n) = smallest number that leads to a new cycle under the base-5 Kaprekar map of A165032.

The programs for A165048, there is no canonical definition to state claims against.
-/

/-! ## A165048.P7574584510332956461

`A376599(A076227(3*n+2))+5^n+1`
-/

namespace A165048.P7574584510332956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376599 (A076227 (3 * n + 2)).toNat + (5 ^ n : ℤ) + 1

end

end A165048.P7574584510332956461

/-! ## A165048.P11948230647773630910

`xor(A002024(n+1), A256415(A000351(n)))`
-/

namespace A165048.P11948230647773630910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002024 (n + 1)) (A256415 (A000351 n).toNat)

end

end A165048.P11948230647773630910

/-!
# A165050: Length of cycle corresponding to n-th term of A165048.

The programs for A165050, there is no canonical definition to state claims against.
-/

/-! ## A165050.P16400784484877841618

`xor(A165042(n+1), A309061(A098473(n)))`
-/

namespace A165050.P16400784484877841618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165042 (n + 1)) (A309061 (A098473 n).toNat)

end

end A165050.P16400784484877841618

/-! ## A165050.P9944434718774397869

`A165042(n+1)-A185284(A000009(n))`
-/

namespace A165050.P9944434718774397869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A185284 (A000009 n).toNat

end

end A165050.P9944434718774397869

/-! ## A165050.P15103753961985533323

`A165042(n+1)-A185284(A182097(n))`
-/

namespace A165050.P15103753961985533323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A185284 (A182097 n).toNat

end

end A165050.P15103753961985533323

/-! ## A165050.P8480152662522760054

`A165042(n+1)-A091247(A185284(2*(n+2)))`
-/

namespace A165050.P8480152662522760054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A091247 (A185284 (2 * (n + 2))).toNat

end

end A165050.P8480152662522760054

/-! ## A165050.P147094806911642084

`A165042(n+1)-A000035(A338855(3*n+2))`
-/

namespace A165050.P147094806911642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A000035 (A338855 (3 * n + 2)).toNat

end

end A165050.P147094806911642084

/-!
# A165051: a(n) = image of n under the base-6 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165051, there is no canonical definition to state claims against.
-/

/-! ## A165051.P15367187153877566618

`A319723(n)-A319654(n)`
-/

namespace A165051.P15367187153877566618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - A319654 n

end

end A165051.P15367187153877566618

/-! ## A165051.P17894862183306019077

`A319806(n)-2*A319654(n)`
-/

namespace A165051.P17894862183306019077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 n - 2 * A319654 n

end

end A165051.P17894862183306019077

/-! ## A165051.P4563552656214780256

`2*A319723(n)-A319806(n)`
-/

namespace A165051.P4563552656214780256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319723 n - A319806 n

end

end A165051.P4563552656214780256

/-! ## A165051.P166977724617685422

`A055953(A319723(n))`
-/

namespace A165051.P166977724617685422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 (A319723 n).toNat

end

end A165051.P166977724617685422

/-! ## A165051.P1588893122956237818

`5*A165052(n)`
-/

namespace A165051.P1588893122956237818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A165052 n

end

end A165051.P1588893122956237818

/-! ## A165051.P15620993283147032977

`A008587(A165052(n))`
-/

namespace A165051.P15620993283147032977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A165052 n).toNat

end

end A165051.P15620993283147032977

/-!
# A165052: a(n) = A165051(n)/5.

The programs for A165052, there is no canonical definition to state claims against.
-/

/-! ## A165052.P13295762412702425688

`A165051(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165052.P13295762412702425688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165051 n : ℚ) / 5

end

end A165052.P13295762412702425688

/-! ## A165052.P12155827334371427539

`A002266(A165051(n))`
-/

namespace A165052.P12155827334371427539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A165051 n).toNat

end

end A165052.P12155827334371427539

/-! ## A165052.P7920478858626093848

`A059995(2*A165051(n))`
-/

namespace A165052.P7920478858626093848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A165051 n).toNat

end

end A165052.P7920478858626093848

/-! ## A165052.P8212987987511623907

`A076310(2*A165051(n))`
-/

namespace A165052.P8212987987511623907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (2 * A165051 n).toNat

end

end A165052.P8212987987511623907

/-! ## A165052.P15258629480364045183

`A076314(2*A165051(n))`
-/

namespace A165052.P15258629480364045183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (2 * A165051 n).toNat

end

end A165052.P15258629480364045183

/-! ## A165052.P12627981757361850506

`A194508(A165051(n)+1)+1`
-/

namespace A165052.P12627981757361850506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A165051 n + 1).toNat + 1

end

end A165052.P12627981757361850506

/-! ## A165052.P16340870710497562979

`(A319723(n)-A319654(n))/5`
-/

namespace A165052.P16340870710497562979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319723 n - A319654 n : ℚ) / 5

end

end A165052.P16340870710497562979

/-!
# A165053: Length of preperiodic part of trajectory of n under iteration of the base-6 Kaprekar map in A165051.

The programs for A165053, there is no canonical definition to state claims against.
-/

/-! ## A165053.P1755510010763495138

`(A165054(n)-1)%5`
-/

namespace A165053.P1755510010763495138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165054 n - 1) 5

end

end A165053.P1755510010763495138

/-! ## A165053.P7326935221498736167

`((2+A010054(n))²+A165054(n))%5`
-/

namespace A165053.P7326935221498736167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 + A010054 n) ^ 2 + A165054 n) 5

end

end A165053.P7326935221498736167

/-! ## A165053.P13601759249316057280

`((2+A063524(n))²+A165054(n))%5`
-/

namespace A165053.P13601759249316057280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 + A063524 n) ^ 2 + A165054 n) 5

end

end A165053.P13601759249316057280

/-! ## A165053.P12637211793065928541

`(A023330(n+1)+A165054(n))%5`
-/

namespace A165053.P12637211793065928541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023330 (n + 1) + A165054 n) 5

end

end A165053.P12637211793065928541

/-! ## A165053.P16937696156176256180

`A030494(n+1)%A165054(n)`
-/

namespace A165053.P16937696156176256180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A165054 n)

end

end A165053.P16937696156176256180

/-! ## A165053.P13548182516315983380

`A072828(n+1)%A165054(n)`
-/

namespace A165053.P13548182516315983380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A165054 n)

end

end A165053.P13548182516315983380

/-! ## A165053.P4058943102118095118

`A198277(n)%A165054(n)`
-/

namespace A165053.P4058943102118095118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A165054 n)

end

end A165053.P4058943102118095118

/-!
# A165055: Fixed points of the base-6 Kaprekar map A165051.

The programs for A165055, there is no canonical definition to state claims against.
-/

/-! ## A165055.P18404133675309442094

`A165060(record[(n+1)/A165061(n+1)])`
-/

namespace A165055.P18404133675309442094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165061 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165055.P18404133675309442094

/-! ## A165055.P16540610656588200965

`record[(2-A165061(n+1))*A165060(n+1)]`
-/

namespace A165055.P16540610656588200965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165061 (n + 1)) * A165060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165055.P16540610656588200965

/-!
# A165056: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165056, there is no canonical definition to state claims against.
-/

/-! ## A165056.P12115883713206778431

`∪[A165055(n+1), A165058(n+1)]`
-/

namespace A165056.P12115883713206778431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165056.P12115883713206778431

/-! ## A165056.P14419567631452645351

`∪[A165058(n+1), A165060(n+1)]`
-/

namespace A165056.P14419567631452645351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165056.P14419567631452645351

/-! ## A165056.P3624498515825689495

`eq[0, A165053(n)]`
-/

namespace A165056.P3624498515825689495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165056.P3624498515825689495

/-! ## A165056.P12216347906640283979

`lt[A165053(n), A060576(n)]`
-/

namespace A165056.P12216347906640283979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165056.P12216347906640283979

/-!
# A165058: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165058, there is no canonical definition to state claims against.
-/

/-! ## A165058.P14606624912182796579

`A165056(A351870(n+3))`
-/

namespace A165058.P14606624912182796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (A351870 (n + 3)).toNat

end

end A165058.P14606624912182796579

/-! ## A165058.P2106510471216733678

`filter[A165056(n+2), A188011(#)]`
-/

namespace A165058.P2106510471216733678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188011 (f1 j).toNat = 1) n)

end

end A165058.P2106510471216733678

/-! ## A165058.P14278115622703897166

`filter[A165056(n+2), A188031(#)]`
-/

namespace A165058.P14278115622703897166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188031 (f1 j).toNat = 1) n)

end

end A165058.P14278115622703897166

/-! ## A165058.P13048583022823852601

`filter[A165056(n+2), A285274(#)]`
-/

namespace A165058.P13048583022823852601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285274 (f1 j).toNat = 1) n)

end

end A165058.P13048583022823852601

/-!
# A165059: Length of cycle mentioned in A165058.

The programs for A165059, there is no canonical definition to state claims against.
-/

/-! ## A165059.P17923334723091565497

`A165057(lt[1, A165057(n+1)]+1)`
-/

namespace A165059.P17923334723091565497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165059.P17923334723091565497

/-!
# A165060: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives least elements of each cycle, including fixed points.

The programs for A165060, there is no canonical definition to state claims against.
-/

/-! ## A165060.P1975635832867808068

`∪[A165055(n+1), A165062(n+1)]`
-/

namespace A165060.P1975635832867808068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165060.P1975635832867808068

/-!
# A165061: Length of cycle mentioned in A165060.

The programs for A165061, there is no canonical definition to state claims against.
-/

/-! ## A165061.P11247929293278638368

`A050873(A270831(2*n+3)-A160051(n))`
-/

namespace A165061.P11247929293278638368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A270831 (2 * n + 3) - A160051 n).toNat

end

end A165061.P11247929293278638368

/-!
# A165062: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives least elements of each cycle of length > 1.

The programs for A165062, there is no canonical definition to state claims against.
-/

/-! ## A165062.P7363377340952258716

`∩[A165058(1+n), A165060(n+1)]`
-/

namespace A165062.P7363377340952258716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165058 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165062.P7363377340952258716

/-!
# A165063: Length of cycle mentioned in A165062.

The programs for A165063, the canonical program `A165063.P9027625364471019247` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165063 has offset 1).

The definition of A165063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165063.P9027625364471019247

`a(n-1)` with `a(0)=6, a(1)=2, a(2)=3, a(3)=2, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A165063

/-- `a(n-1)` -/
def P9027625364471019247.Spec : Prop :=
  ∀ n, (P9027625364471019247.a n : ℤ) = A165063 (n + 1)

theorem P9027625364471019247.correct : P9027625364471019247.Spec := by
  intro n
  simp only [A165063, Nat.add_sub_cancel]

end A165063

/-!
# A165066: Number of n-digit fixed points under the base-6 Kaprekar map A165051.

The programs for A165066, the canonical program `A165066.P14914027951206997296` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165066 has offset 1).

The definition of A165066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165066.P14914027951206997296

`ogf((1+x+x^2-x^4+x^5-x^8+x^14)/(1+x-x^3-2x^4-2x^5-x^6+x^7+2x^8+2x^9+x^10-x^12-x^13))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A165066

/-- `ogf((1+x+x^2-x^4+x^5-x^8+x^14)/(1+x-x^3-2x^4-2x^5-x^6+x^7+2x^8+2x^9+x^10-x^12-x^13))` -/
def P14914027951206997296.Spec : Prop :=
  ∀ n, P14914027951206997296.a n = A165066 (n + 1)

theorem P14914027951206997296.correct : P14914027951206997296.Spec := by
  intro n
  simp only [A165066, Nat.add_sub_cancel]

end A165066

/-! ## A165066.P17512404341235346280

`A174349(A179878(3*n+4))%A327567(3*(n+1))`
-/

namespace A165066.P17512404341235346280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174349 (A179878 (3 * n + 4)).toNat) (A327567 (3 * (n + 1)))

end

end A165066.P17512404341235346280

namespace A165066

/-- `A174349(A179878(3*n+4))%A327567(3*(n+1))` -/
def P17512404341235346280.Spec : Prop :=
  ∀ n, P17512404341235346280.a n = A165066 (n + 1)

end A165066

/-! ## A165066.P5031369837157969506

`xor(A000377(n), A001878(A104004(n)))`
-/

namespace A165066.P5031369837157969506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000377 n) (A001878 (A104004 n).toNat)

end

end A165066.P5031369837157969506

namespace A165066

/-- `xor(A000377(n), A001878(A104004(n)))` -/
def P5031369837157969506.Spec : Prop :=
  ∀ n, P5031369837157969506.a n = A165066 (n + 1)

end A165066

/-! ## A165066.P5725394725026416075

`xor(A039963(A114203(n)), A325836(n))`
-/

namespace A165066.P5725394725026416075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039963 (A114203 n).toNat) (A325836 n)

end

end A165066.P5725394725026416075

namespace A165066

/-- `xor(A039963(A114203(n)), A325836(n))` -/
def P5725394725026416075.Spec : Prop :=
  ∀ n, P5725394725026416075.a n = A165066 (n + 1)

end A165066

/-! ## A165066.P16648437981579006254

`A339399(n+1)%A278222(A032051(n))`
-/

namespace A165066.P16648437981579006254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339399 (n + 1)) (A278222 (A032051 n).toNat)

end

end A165066.P16648437981579006254

namespace A165066

/-- `A339399(n+1)%A278222(A032051(n))` -/
def P16648437981579006254.Spec : Prop :=
  ∀ n, P16648437981579006254.a n = A165066 (n + 1)

end A165066

/-!
# A165069: Smallest member of cycle corresponding to n-th term of A165068.

The programs for A165069, there is no canonical definition to state claims against.
-/

/-! ## A165069.P96757069651228055

`A165051(A003415(∑{d}[1+n, #]²²))`
-/

namespace A165069.P96757069651228055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 (A003415 (((∑ d ∈ Nat.divisors (f1 n), d) ^ 2) ^ 2)).toNat

end

end A165069.P96757069651228055

/-!
# A165071: a(n) = image of n under the base-7 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165071, there is no canonical definition to state claims against.
-/

/-! ## A165071.P9230708927562448964

`A319724(n)-A319655(n)`
-/

namespace A165071.P9230708927562448964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - A319655 n

end

end A165071.P9230708927562448964

/-! ## A165071.P17604101282162174653

`A319807(n)-2*A319655(n)`
-/

namespace A165071.P17604101282162174653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319807 n - 2 * A319655 n

end

end A165071.P17604101282162174653

/-! ## A165071.P7957364908719034708

`2*A319724(n)-A319807(n)`
-/

namespace A165071.P7957364908719034708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319724 n - A319807 n

end

end A165071.P7957364908719034708

/-! ## A165071.P4674637002387560606

`A055955(A319724(n))`
-/

namespace A165071.P4674637002387560606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 (A319724 n).toNat

end

end A165071.P4674637002387560606

/-! ## A165071.P9495719166952598088

`6*A165072(n)`
-/

namespace A165071.P9495719166952598088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A165072 n

end

end A165071.P9495719166952598088

/-! ## A165071.P5469860961615882412

`A008588(A165072(n))`
-/

namespace A165071.P5469860961615882412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A165072 n).toNat

end

end A165071.P5469860961615882412

/-!
# A165072: a(n) = A165071(n)/6.

The programs for A165072, there is no canonical definition to state claims against.
-/

/-! ## A165072.P17969435554586216089

`A165071(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165072.P17969435554586216089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165071 n : ℚ) / 6

end

end A165072.P17969435554586216089

/-! ## A165072.P4400931914916577323

`A008615(A165071(n))`
-/

namespace A165072.P4400931914916577323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A165071 n).toNat

end

end A165072.P4400931914916577323

/-! ## A165072.P15060209615075389018

`A008612(A165071(n)+1)`
-/

namespace A165072.P15060209615075389018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A165071 n + 1).toNat

end

end A165072.P15060209615075389018

/-! ## A165072.P13266219901236398587

`A103221(A165071(n)+1)`
-/

namespace A165072.P13266219901236398587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A165071 n + 1).toNat

end

end A165072.P13266219901236398587

/-! ## A165072.P2291237925963771763

`A055955(A319724(n))/6`
-/

namespace A165072.P2291237925963771763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055955 (A319724 n).toNat : ℚ) / 6

end

end A165072.P2291237925963771763

/-! ## A165072.P1541627906370548267

`(A319724(n)-A319655(n))/6`
-/

namespace A165072.P1541627906370548267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319724 n - A319655 n : ℚ) / 6

end

end A165072.P1541627906370548267

/-!
# A165073: Length of preperiodic part of trajectory of n under iteration of the base-7 Kaprekar map in A165071.

The programs for A165073, there is no canonical definition to state claims against.
-/

/-! ## A165073.P10575367516772954522

`A230809(n+1)%A165074(n)`
-/

namespace A165073.P10575367516772954522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230809 (n + 1)) (A165074 n)

end

end A165073.P10575367516772954522

/-! ## A165073.P4535552984751998882

`A157190(n+1)%A165074(n)`
-/

namespace A165073.P4535552984751998882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157190 (n + 1)) (A165074 n)

end

end A165073.P4535552984751998882

/-! ## A165073.P18115820007422069795

`A340713(n+1)%A165074(n)`
-/

namespace A165073.P18115820007422069795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340713 (n + 1)) (A165074 n)

end

end A165073.P18115820007422069795

/-! ## A165073.P6195654744959922419

`A326393(n+1)%A165074(n)`
-/

namespace A165073.P6195654744959922419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326393 (n + 1)) (A165074 n)

end

end A165073.P6195654744959922419

/-!
# A165075: Fixed points of the base-7 Kaprekar map A165071.

The programs for A165075, there is no canonical definition to state claims against.
-/

/-! ## A165075.P1459322891752358264

`A165076(lt[A165077(1+n), 2]+1)`
-/

namespace A165075.P1459322891752358264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165076 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A165075.P1459322891752358264

/-!
# A165076: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165076, there is no canonical definition to state claims against.
-/

/-! ## A165076.P11170187112889819609

`∪[A165078(n+1), A165080(n+1)]`
-/

namespace A165076.P11170187112889819609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165076.P11170187112889819609

/-! ## A165076.P5411119655495494325

`A165078(A028310(n))%A098547(A111396(n))`
-/

namespace A165076.P5411119655495494325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165078 (A028310 n).toNat) (A098547 (A111396 n).toNat)

end

end A165076.P5411119655495494325

/-! ## A165076.P8429281262464090107

`A165078(A000007(n)+n)%A261655(A010000(n))`
-/

namespace A165076.P8429281262464090107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165078 (A000007 n + (n : ℤ)).toNat) (A261655 (A010000 n).toNat)

end

end A165076.P8429281262464090107

/-! ## A165076.P801281721164918545

`A060576(A077957(n))*A165078(A000007(n)+n)`
-/

namespace A165076.P801281721164918545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A077957 n).toNat * A165078 (A000007 n + (n : ℤ)).toNat

end

end A165076.P801281721164918545

/-! ## A165076.P11104687433492388374

`∑{e}[2^n, A165078(#)]`
-/

namespace A165076.P11104687433492388374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A165078 (Nat.factorization (f1 n) p)

end

end A165076.P11104687433492388374

/-!
# A165079: Length of cycle mentioned in A165078.

The programs for A165079, there is no canonical definition to state claims against.
-/

/-! ## A165079.P7128274459989032908

`filter[A165077(n+1), A252372(#)]`
-/

namespace A165079.P7128274459989032908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A165079.P7128274459989032908

/-! ## A165079.P11056085391679232051

`filter[A165077(n+1), A164980(A007953(#))]`
-/

namespace A165079.P11056085391679232051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (A007953 (f1 j).toNat).toNat = 1) n)

end

end A165079.P11056085391679232051

/-! ## A165079.P1942500324748350827

`filter[A165077(n+1), A071178(A165077(#))]`
-/

namespace A165079.P1942500324748350827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165079.P1942500324748350827

/-! ## A165079.P1403081857120269967

`filter[A165077(n+1), A164980(A165116(#))]`
-/

namespace A165079.P1403081857120269967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (A165116 (f1 j).toNat).toNat = 1) n)

end

end A165079.P1403081857120269967

/-! ## A165079.P6668211846415848210

`filter[A165077(n+1), A354807(A026479(#))]`
-/

namespace A165079.P6668211846415848210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (A026479 (f1 j).toNat).toNat = 1) n)

end

end A165079.P6668211846415848210

/-! ## A165079.P3725059664422723201

`filter[A165077(n+1), A354807(A326534(#))]`
-/

namespace A165079.P3725059664422723201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (A326534 (f1 j).toNat).toNat = 1) n)

end

end A165079.P3725059664422723201

/-! ## A165079.P9597813541658883783

`filter[A165077(n+2), A164980(A165077(#))]`
-/

namespace A165079.P9597813541658883783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165079.P9597813541658883783

/-! ## A165079.P14904040836035273676

`filter[A165077(n+1), A165018(A072982(#))]`
-/

namespace A165079.P14904040836035273676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165018 (A072982 (f1 j).toNat).toNat = 1) n)

end

end A165079.P14904040836035273676

/-!
# A165080: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives least elements of each cycle, including fixed points.

The programs for A165080, there is no canonical definition to state claims against.
-/

/-! ## A165080.P430660157361675661

`A165082(A028310(n))%A324023(2*n+3)`
-/

namespace A165080.P430660157361675661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165082 (A028310 n).toNat) (A324023 (2 * n + 3))

end

end A165080.P430660157361675661

/-! ## A165080.P1852582017948634876

`∪[A165088(A032559(n+1)), A165082(n+1)]`
-/

namespace A165080.P1852582017948634876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165088 (A032559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165080.P1852582017948634876

/-! ## A165080.P1647032043218806677

`A057427(A165095(n+1))*A165082(A028310(n))`
-/

namespace A165080.P1647032043218806677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A165095 (n + 1)).toNat * A165082 (A028310 n).toNat

end

end A165080.P1647032043218806677

/-! ## A165080.P1650697268334355403

`A165082(a(floor(n/10))*100+n%10)` with `a(0)=0`
-/

namespace A165080.P1650697268334355403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165082 (a ⌊(n : ℚ) / 10⌋.toNat * 100 + ((n % 10 : ℕ) : ℤ)).toNat

end

end A165080.P1650697268334355403

/-! ## A165080.P8768825426673117586

`record[A165088(A109035(3*n+2))]`
-/

namespace A165080.P8768825426673117586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165088 (A109035 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165080.P8768825426673117586

/-!
# A165082: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives least elements of each cycle of length > 1.

The programs for A165082, there is no canonical definition to state claims against.
-/

/-! ## A165082.P3309438672789408992

`∩[A165078(n+1), A165080(n+1)]`
-/

namespace A165082.P3309438672789408992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165082.P3309438672789408992

/-! ## A165082.P13323430756684630583

`A165080(A067340(n+1)%A327920(n+5))`
-/

namespace A165082.P13323430756684630583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (Int.tmod (A067340 (n + 1)) (A327920 (n + 5))).toNat

end

end A165082.P13323430756684630583

/-! ## A165082.P14143834971047093715

`record[root(A165080(n+2), A165045(n+1))]`
-/

namespace A165082.P14143834971047093715
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165080 (n + 2) : ℝ) ^ (1 / (A165045 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165082.P14143834971047093715

/-!
# A165083: Length of cycle mentioned in A165082.

The programs for A165083, there is no canonical definition to state claims against.
-/

/-! ## A165083.P1855228509280939292

`A165081(lt[1, A165081(n+1)]+1)`
-/

namespace A165083.P1855228509280939292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165083.P1855228509280939292

/-! ## A165083.P11362453217999915823

`filter[A165081(n+1), A189727(A006530(#))]`
-/

namespace A165083.P11362453217999915823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (A006530 (f1 j).toNat).toNat = 1) n)

end

end A165083.P11362453217999915823

/-! ## A165083.P10032084226432981168

`filter[A165081(n+1), A354807(A165077(#))]`
-/

namespace A165083.P10032084226432981168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165083.P10032084226432981168

/-! ## A165083.P6925078095034875795

`filter[A165081(n+1), A354807(A326534(#))]`
-/

namespace A165083.P6925078095034875795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (A326534 (f1 j).toNat).toNat = 1) n)

end

end A165083.P6925078095034875795

/-!
# A165087: a(n) = smallest number that leads to a new cycle under the base-7 Kaprekar map of A165071.

The programs for A165087, there is no canonical definition to state claims against.
-/

/-! ## A165087.P14774599838843394038

`A124010(A007559(n+1))+A066429(n+1)`
-/

namespace A165087.P14774599838843394038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A007559 (n + 1)).toNat + A066429 (n + 1)

end

end A165087.P14774599838843394038

/-!
# A165088: Smallest member of cycle corresponding to n-th term of A165087.

The programs for A165088, there is no canonical definition to state claims against.
-/

/-! ## A165088.P16895054853037853811

`A165080(or(A032559(n+1), A328795(n)))`
-/

namespace A165088.P16895054853037853811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (Int.lor (A032559 (n + 1)) (A328795 n)).toNat

end

end A165088.P16895054853037853811

/-! ## A165088.P17215498784030864044

`A165080(A000005(5^n))`
-/

namespace A165088.P17215498784030864044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (A000005 (5 ^ n)).toNat

end

end A165088.P17215498784030864044

/-!
# A165090: a(n) is the image of n under the base-8 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165090, there is no canonical definition to state claims against.
-/

/-! ## A165090.P1586452332743588701

`A319725(n)-A319656(n)`
-/

namespace A165090.P1586452332743588701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - A319656 n

end

end A165090.P1586452332743588701

/-! ## A165090.P12515345620464514105

`A319808(n)-2*A319656(n)`
-/

namespace A165090.P12515345620464514105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - 2 * A319656 n

end

end A165090.P12515345620464514105

/-! ## A165090.P11492593698541589387

`2*A319725(n)-A319808(n)`
-/

namespace A165090.P11492593698541589387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319725 n - A319808 n

end

end A165090.P11492593698541589387

/-! ## A165090.P16403265513774746214

`A055957(A319725(n))`
-/

namespace A165090.P16403265513774746214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A319725 n).toNat

end

end A165090.P16403265513774746214

/-! ## A165090.P16435425693947167048

`7*A165091(n)`
-/

namespace A165090.P16435425693947167048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A165091 n

end

end A165090.P16435425693947167048

/-! ## A165090.P2237430932162886265

`A008589(A165091(n))`
-/

namespace A165090.P2237430932162886265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A165091 n).toNat

end

end A165090.P2237430932162886265

/-! ## A165090.P11388993563399026592

`lcm((-1)^A187557(n+1), A055957(n))`
-/

namespace A165090.P11388993563399026592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A187557 (n + 1) : ℤ))) (A055957 n)

end

end A165090.P11388993563399026592

/-!
# A165091: a(n) = A165090(n)/7.

The programs for A165091, there is no canonical definition to state claims against.
-/

/-! ## A165091.P290913034119059571

`A165090(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165091.P290913034119059571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165090 n : ℚ) / 7

end

end A165091.P290913034119059571

/-! ## A165091.P13188851813876764506

`A055957(A319725(n))/7`
-/

namespace A165091.P13188851813876764506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055957 (A319725 n).toNat : ℚ) / 7

end

end A165091.P13188851813876764506

/-! ## A165091.P4095677098926789591

`A008617(2*A165090(n)+1)`
-/

namespace A165091.P4095677098926789591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A165090 n + 1).toNat

end

end A165091.P4095677098926789591

/-! ## A165091.P8869257759123193678

`A008617(2*A165090(n))-1`
-/

namespace A165091.P8869257759123193678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A165090 n).toNat - 1

end

end A165091.P8869257759123193678

/-! ## A165091.P1323554733951724760

`(A319725(n)-A319656(n))/7`
-/

namespace A165091.P1323554733951724760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319725 n - A319656 n : ℚ) / 7

end

end A165091.P1323554733951724760

/-! ## A165091.P8685384090159661027

`A347689(record[A048379(A048379(n))])`
-/

namespace A165091.P8685384090159661027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A048379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165091.P8685384090159661027

/-! ## A165091.P10110778431362027465

`A037902(A263635(or(n, n+1))+n)`
-/

namespace A165091.P10110778431362027465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A263635 (Nat.lor n (n + 1)) + (n : ℤ)).toNat

end

end A165091.P10110778431362027465

/-! ## A165091.P5646724738430715266

`A064834(A171644(n))`
-/

namespace A165091.P5646724738430715266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A171644 n).toNat

end

end A165091.P5646724738430715266

/-!
# A165092: Length of preperiodic part of trajectory of n under iteration of the base-8 Kaprekar map in A165090.

The programs for A165092, there is no canonical definition to state claims against.
-/

/-! ## A165092.P514986237184284561

`A196305(n)%A165093(n)`
-/

namespace A165092.P514986237184284561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A165093 n)

end

end A165092.P514986237184284561

/-! ## A165092.P12368136302404129808

`A173875(n+1)%A165093(n)`
-/

namespace A165092.P12368136302404129808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173875 (n + 1)) (A165093 n)

end

end A165092.P12368136302404129808

/-! ## A165092.P7486041947286379739

`A083800(n+1)%A165093(n)`
-/

namespace A165092.P7486041947286379739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A165093 n)

end

end A165092.P7486041947286379739

/-! ## A165092.P9609889745222409839

`A070198(n)%A165093(n)`
-/

namespace A165092.P9609889745222409839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A165093 n)

end

end A165092.P9609889745222409839

/-! ## A165092.P1001740377286498892

`A079782(n+1)%A165093(n)`
-/

namespace A165092.P1001740377286498892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A165093 n)

end

end A165092.P1001740377286498892

/-! ## A165092.P15283373895499833050

`A083685(n+1)%A165093(n)`
-/

namespace A165092.P15283373895499833050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A165093 n)

end

end A165092.P15283373895499833050

/-! ## A165092.P17655821330143061174

`A121934(n+1)%A165093(n)`
-/

namespace A165092.P17655821330143061174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A165093 n)

end

end A165092.P17655821330143061174

/-! ## A165092.P6378010898628750951

`A319047(A165093(n)+A000096(n))`
-/

namespace A165092.P6378010898628750951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A165093 n + A000096 n).toNat

end

end A165092.P6378010898628750951

/-! ## A165092.P12631020043388387737

`A030494(n+1)%A165093(n)`
-/

namespace A165092.P12631020043388387737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A165093 n)

end

end A165092.P12631020043388387737

/-! ## A165092.P16412896681842782608

`A072828(n+1)%A165093(n)`
-/

namespace A165092.P16412896681842782608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A165093 n)

end

end A165092.P16412896681842782608

/-! ## A165092.P4091414693377471450

`A198277(n)%A165093(n)`
-/

namespace A165092.P4091414693377471450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A165093 n)

end

end A165092.P4091414693377471450

/-!
# A165094: Fixed points of the base-8 Kaprekar map A165090.

The programs for A165094, there is no canonical definition to state claims against.
-/

/-! ## A165094.P9563160723616165705

`A165095(eq[1, A165096(n+1)]+1)`
-/

namespace A165094.P9563160723616165705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A165094.P9563160723616165705

/-! ## A165094.P12390010116040706095

`A165099(record[(n+1)/A165100(n+1)])`
-/

namespace A165094.P12390010116040706095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165100 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165094.P12390010116040706095

/-! ## A165094.P17509685459978238239

`record[(2-A165100(n+1))*A165099(n+1)]`
-/

namespace A165094.P17509685459978238239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165100 (n + 1)) * A165099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165094.P17509685459978238239

/-!
# A165095: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165095, there is no canonical definition to state claims against.
-/

/-! ## A165095.P12306432196257646292

`∪[A165094(n+1), A165097(n+1)]`
-/

namespace A165095.P12306432196257646292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165095.P12306432196257646292

/-! ## A165095.P5883802948104975844

`∪[A165097(n+1), A165099(n+1)]`
-/

namespace A165095.P5883802948104975844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165095.P5883802948104975844

/-!
# A165098: Length of cycle mentioned in A165097.

The programs for A165098, there is no canonical definition to state claims against.
-/

/-! ## A165098.P231325019594528120

`filter[A165096(1+n), A164980(#)]`
-/

namespace A165098.P231325019594528120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A165098.P231325019594528120

/-! ## A165098.P17712236625572209513

`filter[A165096(1+n), A252372(#)]`
-/

namespace A165098.P17712236625572209513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A165098.P17712236625572209513

/-! ## A165098.P1848928143891052605

`filter[A165096(n+1), A354807(#)]`
-/

namespace A165098.P1848928143891052605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A165098.P1848928143891052605

/-! ## A165098.P13052707111303620531

`A165096(lt[1, A165096(1+n)]+1)`
-/

namespace A165098.P13052707111303620531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165098.P13052707111303620531

/-! ## A165098.P18201620779924302921

`filter[A165096(n+1), A071178(A000217(#))]`
-/

namespace A165098.P18201620779924302921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A000217 (f1 j).toNat).toNat = 1) n)

end

end A165098.P18201620779924302921

/-! ## A165098.P15252682028208379511

`filter[A165096(n+1), A071178(A165077(#))]`
-/

namespace A165098.P15252682028208379511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071178 (A165077 (f1 j).toNat).toNat = 1) n)

end

end A165098.P15252682028208379511

/-! ## A165098.P15810362300161588270

`filter[A165096(n+1), A165018(A072982(#))]`
-/

namespace A165098.P15810362300161588270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165018 (A072982 (f1 j).toNat).toNat = 1) n)

end

end A165098.P15810362300161588270

/-!
# A165099: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives least elements of each cycle, including fixed points.

The programs for A165099, there is no canonical definition to state claims against.
-/

/-! ## A165099.P313373844111506875

`∪[A165094(n+1), A165101(n+1)]`
-/

namespace A165099.P313373844111506875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165099.P313373844111506875

/-! ## A165099.P7869404684497307590

`record[A165108(A165098(n+3)%A094608(n+3))]`
-/

namespace A165099.P7869404684497307590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165108 (Int.tmod (A165098 (n + 3)) (A094608 (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165099.P7869404684497307590

/-! ## A165099.P6095644486864663612

`A165108(A072062(n+1)%A352233(2*(n+2)))`
-/

namespace A165099.P6095644486864663612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165108 (Int.tmod (A072062 (n + 1)) (A352233 (2 * (n + 2)))).toNat

end

end A165099.P6095644486864663612

