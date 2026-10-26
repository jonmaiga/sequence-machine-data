import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037000: Positions of the digit '1' in the decimal expansion of Pi.

The programs for A037000, there is no canonical definition to state claims against.
-/

/-! ## A037000.P11788642299632538927

`a(n-1)+A135088(n)+1` with `a(0)=1`
-/

namespace A037000.P11788642299632538927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A135088 n + 1)

end

end A037000.P11788642299632538927

/-! ## A037000.P17047546924191769589

`∑[A135088(n+1)+1]-A135088(n+1)`
-/

namespace A037000.P17047546924191769589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135088 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135088 (n + 1)

end

end A037000.P17047546924191769589

/-! ## A037000.P18227246093499681945

`A053745(n+1)-1`
-/

namespace A037000.P18227246093499681945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1) - 1

end

end A037000.P18227246093499681945

/-! ## A037000.P13301311902841321053

`A112176(ceil(1/(n+1)))+A053745(n+1)`
-/

namespace A037000.P13301311902841321053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 ⌈1 / (n + 1 : ℚ)⌉.toNat + A053745 (n + 1)

end

end A037000.P13301311902841321053

/-! ## A037000.P7436281647864538375

`A056220(A083914(2*n+1))+A053745(n+1)`
-/

namespace A037000.P7436281647864538375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A083914 (2 * n + 1)).toNat + A053745 (n + 1)

end

end A037000.P7436281647864538375

/-! ## A037000.P682809988562101235

`eq[1, A000796(n)]`
-/

namespace A037000.P682809988562101235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P682809988562101235

/-! ## A037000.P10282198143164335755

`eq[2, A123152(n+1)]`
-/

namespace A037000.P10282198143164335755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P10282198143164335755

/-! ## A037000.P10272570872199341816

`eq[1, A086994(n)]`
-/

namespace A037000.P10272570872199341816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P10272570872199341816

/-! ## A037000.P3166304582877747993

`eq[8, A030644(n)]`
-/

namespace A037000.P3166304582877747993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P3166304582877747993

/-! ## A037000.P2214084078219658258

`eq[1, A072448(n+1)]`
-/

namespace A037000.P2214084078219658258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P2214084078219658258

/-! ## A037000.P15129048083135188291

`eq[1, A261197(n+1)]`
-/

namespace A037000.P15129048083135188291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P15129048083135188291

/-! ## A037000.P4126769861519179609

`eq[2, A059833(n+1)]`
-/

namespace A037000.P4126769861519179609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P4126769861519179609

/-! ## A037000.P17297690677287906437

`A023443(A053745(n+1))`
-/

namespace A037000.P17297690677287906437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053745 (n + 1)).toNat

end

end A037000.P17297690677287906437

/-! ## A037000.P9532925999770423308

`eq[2, A123152(A028310(n))]-1`
-/

namespace A037000.P9532925999770423308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A037000.P9532925999770423308

/-! ## A037000.P15121409112456577085

`eq[A010673(n), A054249(n+1)]`
-/

namespace A037000.P15121409112456577085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037000.P15121409112456577085

/-! ## A037000.P15154888919100965564

`eq[2, A187747(n)+A073212(n)]`
-/

namespace A037000.P15154888919100965564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037000.P15154888919100965564

/-! ## A037000.P13198125683319422819

`eq[A054249(n+1)+1, A010684(n)]`
-/

namespace A037000.P13198125683319422819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037000.P13198125683319422819

/-! ## A037000.P12336338434572519117

`eq[A062157(n)+1, A054249(n+1)]`
-/

namespace A037000.P12336338434572519117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037000.P12336338434572519117

/-! ## A037000.P9647791235306846720

`A065254(A017281(n))-1`
-/

namespace A037000.P9647791235306846720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017281 n).toNat - 1

end

end A037000.P9647791235306846720

/-! ## A037000.P15950862867902346332

`A065254(A017293(n)-1)-1`
-/

namespace A037000.P15950862867902346332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017293 n - 1).toNat - 1

end

end A037000.P15950862867902346332

/-!
# A037001: Positions of the digit '2' in the decimal expansion of Pi (where positions 0, 1, 2,... refer to the digits 3, 1, 4,...).

The programs for A037001, there is no canonical definition to state claims against.
-/

/-! ## A037001.P2924428720102144047

`A053746(n+1)-1`
-/

namespace A037001.P2924428720102144047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1) - 1

end

end A037001.P2924428720102144047

/-! ## A037001.P8419633498001984431

`A317529(A039956(n+1))+A053746(n+1)`
-/

namespace A037001.P8419633498001984431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A039956 (n + 1)).toNat + A053746 (n + 1)

end

end A037001.P8419633498001984431

/-! ## A037001.P16583694001265556544

`∩[A153030(n+1), A153031(n+1)]-1`
-/

namespace A037001.P16583694001265556544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A037001.P16583694001265556544

/-! ## A037001.P7021245142884271070

`eq[2, A000796(n)]`
-/

namespace A037001.P7021245142884271070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P7021245142884271070

/-! ## A037001.P13847219403291128608

`eq[3, A123152(n+1)]`
-/

namespace A037001.P13847219403291128608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P13847219403291128608

/-! ## A037001.P12164490754653172757

`eq[7, A030644(n)]`
-/

namespace A037001.P12164490754653172757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P12164490754653172757

/-! ## A037001.P4034021324046435547

`eq[3, A059833(n+1)]`
-/

namespace A037001.P4034021324046435547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P4034021324046435547

/-! ## A037001.P17609798383469261580

`eq[4, A072448(n+1)]`
-/

namespace A037001.P17609798383469261580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P17609798383469261580

/-! ## A037001.P8385539140222222029

`eq[8, A261197(n+1)]`
-/

namespace A037001.P8385539140222222029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P8385539140222222029

/-! ## A037001.P5912639000960141233

`A023443(A053746(n+1))`
-/

namespace A037001.P5912639000960141233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053746 (n + 1)).toNat

end

end A037001.P5912639000960141233

/-! ## A037001.P8661164194981611572

`eq[A010684(n), A054249(n+1)]`
-/

namespace A037001.P8661164194981611572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037001.P8661164194981611572

/-! ## A037001.P17840425880943925239

`eq[A010673(n)+1, A054249(n+1)]`
-/

namespace A037001.P17840425880943925239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037001.P17840425880943925239

/-! ## A037001.P9852352411195211537

`eq[A054249(n+1)+2, A010703(n)]`
-/

namespace A037001.P9852352411195211537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037001.P9852352411195211537

/-! ## A037001.P319556287212392180

`A065254(A017293(n))-1`
-/

namespace A037001.P319556287212392180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017293 n).toNat - 1

end

end A037001.P319556287212392180

/-! ## A037001.P17661775306188402260

`A065254(A017281(n)+1)-1`
-/

namespace A037001.P17661775306188402260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017281 n + 1).toNat - 1

end

end A037001.P17661775306188402260

/-! ## A037001.P5021563136549599803

`A065254(A017305(n)-1)-1`
-/

namespace A037001.P5021563136549599803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017305 n - 1).toNat - 1

end

end A037001.P5021563136549599803

/-! ## A037001.P372053256619846490

`A065254(A017317(n)-2)-1`
-/

namespace A037001.P372053256619846490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017317 n - 2).toNat - 1

end

end A037001.P372053256619846490

/-! ## A037001.P10141028059510734036

`eq[2, A010879(A065253(n+1))]`
-/

namespace A037001.P10141028059510734036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P10141028059510734036

/-! ## A037001.P6640513392736068001

`eq[7, A179102(n+1)]`
-/

namespace A037001.P6640513392736068001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P6640513392736068001

/-! ## A037001.P8508201471511225281

`eq[8, A179103(n+1)]`
-/

namespace A037001.P8508201471511225281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037001.P8508201471511225281

/-!
# A037002: Positions of the digit '3' in the decimal expansion of Pi - 3.

The programs for A037002, there is no canonical definition to state claims against.
-/

/-! ## A037002.P6472311209624596685

`A053747(n+2)-1`
-/

namespace A037002.P6472311209624596685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 2) - 1

end

end A037002.P6472311209624596685

/-! ## A037002.P17974382888033174366

`∑[abs(Δ[A053747(n+1)])]`
-/

namespace A037002.P17974382888033174366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037002.P17974382888033174366

/-! ## A037002.P5361167153130286585

`∑[A118759(Δ[A053747(n+1)])]`
-/

namespace A037002.P5361167153130286585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037002.P5361167153130286585

/-! ## A037002.P15644938790949100479

`A001489(n+1)+A053747(n+2)+n`
-/

namespace A037002.P15644938790949100479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A053747 (n + 2) + (n : ℤ))

end

end A037002.P15644938790949100479

/-! ## A037002.P6057024871197659830

`∑[Δ[A053747(n+1)]%A157331(n+1)]`
-/

namespace A037002.P6057024871197659830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A157331 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037002.P6057024871197659830

/-! ## A037002.P6014531535884479315

`A057918(Δ[A053747(n+1)]²)+A053747(n+1)`
-/

namespace A037002.P6014531535884479315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((f1 (n + 1) - f1 n) ^ 2).toNat + A053747 (n + 1)

end

end A037002.P6014531535884479315

/-! ## A037002.P14421291853859358680

`∩[A153031(n+2), A153032(n+2)]-1`
-/

namespace A037002.P14421291853859358680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153032 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A037002.P14421291853859358680

/-! ## A037002.P5583806629206210393

`eq[3, A000796(n+1)]+1`
-/

namespace A037002.P5583806629206210393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037002.P5583806629206210393

/-! ## A037002.P14762610191788455477

`eq[A040002(n), A123152(n+1)]`
-/

namespace A037002.P14762610191788455477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P14762610191788455477

/-! ## A037002.P16664067441718963345

`A065254(A017305(n+1))-1`
-/

namespace A037002.P16664067441718963345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017305 (n + 1)).toNat - 1

end

end A037002.P16664067441718963345

/-! ## A037002.P10413974292991910276

`A023443(A053747(n+2))`
-/

namespace A037002.P10413974292991910276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053747 (n + 2)).toNat

end

end A037002.P10413974292991910276

/-! ## A037002.P15250108437054343719

`eq[A040002(n), A059833(n+1)]`
-/

namespace A037002.P15250108437054343719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P15250108437054343719

/-! ## A037002.P10902077770014672385

`eq[A072448(n+1), A100401(n)]`
-/

namespace A037002.P10902077770014672385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P10902077770014672385

/-! ## A037002.P9391296272427632897

`eq[A072448(n+1), A100403(n)]`
-/

namespace A037002.P9391296272427632897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P9391296272427632897

/-! ## A037002.P9370619629733564952

`eq[A059833(n+1), A113311(n)]`
-/

namespace A037002.P9370619629733564952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P9370619629733564952

/-! ## A037002.P13841182974310329620

`eq[A059833(n+1), A123932(n)]`
-/

namespace A037002.P13841182974310329620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P13841182974310329620

/-! ## A037002.P15261601606068499899

`eq[A059833(n+1), A158411(n)]`
-/

namespace A037002.P15261601606068499899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P15261601606068499899

/-! ## A037002.P9579429720677596197

`eq[A113311(n), A123152(n+1)]`
-/

namespace A037002.P9579429720677596197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037002.P9579429720677596197

/-!
# A037003: Positions of the digit '4' in the decimal expansion of Pi.

The programs for A037003, there is no canonical definition to state claims against.
-/

/-! ## A037003.P212801747882114343

`A053748(n+1)-1`
-/

namespace A037003.P212801747882114343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1) - 1

end

end A037003.P212801747882114343

/-! ## A037003.P18091839218872051634

`eq[4, A000796(n)]`
-/

namespace A037003.P18091839218872051634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037003.P18091839218872051634

/-! ## A037003.P3755817769114401618

`eq[5, A123152(n+1)]`
-/

namespace A037003.P3755817769114401618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037003.P3755817769114401618

/-! ## A037003.P6215527683307959835

`A326407(A000040(n+1))+A053748(n+1)`
-/

namespace A037003.P6215527683307959835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326407 (A000040 (n + 1)).toNat + A053748 (n + 1)

end

end A037003.P6215527683307959835

/-! ## A037003.P16115693765018252367

`eq[5, A030644(n)]`
-/

namespace A037003.P16115693765018252367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037003.P16115693765018252367

/-! ## A037003.P8127987901350207721

`eq[5, A059833(n+1)]`
-/

namespace A037003.P8127987901350207721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037003.P8127987901350207721

/-! ## A037003.P10267915086603562770

`A023443(A053748(n+1))`
-/

namespace A037003.P10267915086603562770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053748 (n + 1)).toNat

end

end A037003.P10267915086603562770

/-! ## A037003.P5860516562275153755

`eq[A010703(n), A054249(n+1)]`
-/

namespace A037003.P5860516562275153755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P5860516562275153755

/-! ## A037003.P70699323211725735

`eq[A040056(n), A072448(n+1)]`
-/

namespace A037003.P70699323211725735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P70699323211725735

/-! ## A037003.P1395362948079801441

`eq[A054249(n+1)+1, A010711(n)]`
-/

namespace A037003.P1395362948079801441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P1395362948079801441

/-! ## A037003.P2042046461233718548

`eq[A001749(n+1), A123153(n+1)]`
-/

namespace A037003.P2042046461233718548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P2042046461233718548

/-! ## A037003.P16629660778174276191

`eq[A062876(n+1), A123153(n+1)]`
-/

namespace A037003.P16629660778174276191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P16629660778174276191

/-! ## A037003.P4835415014482287219

`eq[A010684(n)+2, A054249(n+1)]`
-/

namespace A037003.P4835415014482287219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P4835415014482287219

/-! ## A037003.P1380087687142609604

`eq[A054249(n+1)+2, A010718(n)]`
-/

namespace A037003.P1380087687142609604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037003.P1380087687142609604

/-! ## A037003.P8699434773383863553

`A065254(A017317(n))-1`
-/

namespace A037003.P8699434773383863553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017317 n).toNat - 1

end

end A037003.P8699434773383863553

/-! ## A037003.P9464064027038219943

`A065254(A017305(n)+1)-1`
-/

namespace A037003.P9464064027038219943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017305 n + 1).toNat - 1

end

end A037003.P9464064027038219943

/-! ## A037003.P18444878221069605391

`A065254(A017293(n)+2)-1`
-/

namespace A037003.P18444878221069605391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017293 n + 2).toNat - 1

end

end A037003.P18444878221069605391

/-! ## A037003.P14776312499128823087

`A065254(A017329(n)-1)-1`
-/

namespace A037003.P14776312499128823087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017329 n - 1).toNat - 1

end

end A037003.P14776312499128823087

/-! ## A037003.P16335949240000139263

`A065254(A017341(n)-2)-1`
-/

namespace A037003.P16335949240000139263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017341 n - 2).toNat - 1

end

end A037003.P16335949240000139263

/-! ## A037003.P12756496158652563924

`eq[2, A010879(A065253(n+1))-2]`
-/

namespace A037003.P12756496158652563924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037003.P12756496158652563924

/-!
# A037004: Positions of the digit '5' in the decimal expansion of Pi.

The programs for A037004, there is no canonical definition to state claims against.
-/

/-! ## A037004.P8251518383522929068

`A053749(n+1)-1`
-/

namespace A037004.P8251518383522929068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1) - 1

end

end A037004.P8251518383522929068

/-! ## A037004.P2853910656282637851

`eq[5, A000796(n)]`
-/

namespace A037004.P2853910656282637851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P2853910656282637851

/-! ## A037004.P6494168613892146379

`eq[6, A123152(n+1)]`
-/

namespace A037004.P6494168613892146379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P6494168613892146379

/-! ## A037004.P18334818435952039278

`eq[4, A030644(n)]`
-/

namespace A037004.P18334818435952039278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P18334818435952039278

/-! ## A037004.P12025956266373895290

`eq[6, A059833(n+1)]`
-/

namespace A037004.P12025956266373895290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P12025956266373895290

/-! ## A037004.P11573112886500601119

`A023443(A053749(n+1))`
-/

namespace A037004.P11573112886500601119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053749 (n + 1)).toNat

end

end A037004.P11573112886500601119

/-! ## A037004.P1762091892529552098

`A289207(A053749(n+1)+1)`
-/

namespace A037004.P1762091892529552098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053749 (n + 1) + 1).toNat

end

end A037004.P1762091892529552098

/-! ## A037004.P7810475981448492273

`eq[A010711(n), A054249(n+1)]`
-/

namespace A037004.P7810475981448492273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037004.P7810475981448492273

/-! ## A037004.P8961947062671998351

`eq[A054249(n+1), A101432(n)]`
-/

namespace A037004.P8961947062671998351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037004.P8961947062671998351

/-! ## A037004.P3298308042669842780

`eq[A010703(n)+1, A054249(n+1)]`
-/

namespace A037004.P3298308042669842780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037004.P3298308042669842780

/-! ## A037004.P18381578520712281704

`eq[A054249(n+1)+1, A010718(n)]`
-/

namespace A037004.P18381578520712281704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037004.P18381578520712281704

/-! ## A037004.P15494689784805392523

`eq[A054249(n+1)+2, A010724(n)]`
-/

namespace A037004.P15494689784805392523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037004.P15494689784805392523

/-! ## A037004.P10003644157958623660

`A065254(A017329(n))-1`
-/

namespace A037004.P10003644157958623660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017329 n).toNat - 1

end

end A037004.P10003644157958623660

/-! ## A037004.P12236793545799478602

`A065254(A017317(n)+1)-1`
-/

namespace A037004.P12236793545799478602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017317 n + 1).toNat - 1

end

end A037004.P12236793545799478602

/-! ## A037004.P11097081192475441213

`A065254(A017305(n)+2)-1`
-/

namespace A037004.P11097081192475441213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017305 n + 2).toNat - 1

end

end A037004.P11097081192475441213

/-! ## A037004.P8041860831947030249

`A065254(A017341(n)-1)-1`
-/

namespace A037004.P8041860831947030249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017341 n - 1).toNat - 1

end

end A037004.P8041860831947030249

/-! ## A037004.P5814973179135411745

`A065254(A017353(n)-2)-1`
-/

namespace A037004.P5814973179135411745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017353 n - 2).toNat - 1

end

end A037004.P5814973179135411745

/-! ## A037004.P3295698875035525817

`eq[2, A179102(n+1)]`
-/

namespace A037004.P3295698875035525817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P3295698875035525817

/-! ## A037004.P11732061477720113679

`eq[5, A001355(2*n+1)]`
-/

namespace A037004.P11732061477720113679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P11732061477720113679

/-! ## A037004.P11554511364926483328

`eq[5, A076790(2*n+1)]`
-/

namespace A037004.P11554511364926483328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037004.P11554511364926483328

/-!
# A037005: Positions of the digit '6' in the decimal expansion of Pi.

The programs for A037005, there is no canonical definition to state claims against.
-/

/-! ## A037005.P2578459372171744857

`A053750(n+1)-1`
-/

namespace A037005.P2578459372171744857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053750 (n + 1) - 1

end

end A037005.P2578459372171744857

/-! ## A037005.P3475500109291222346

`eq[6, A000796(n)]`
-/

namespace A037005.P3475500109291222346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P3475500109291222346

/-! ## A037005.P3091297833197449938

`eq[7, A123152(n+1)]`
-/

namespace A037005.P3091297833197449938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P3091297833197449938

/-! ## A037005.P6512783217837371182

`eq[3, A030644(n)]`
-/

namespace A037005.P6512783217837371182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P6512783217837371182

/-! ## A037005.P18177476818107490614

`eq[7, A059833(n+1)]`
-/

namespace A037005.P18177476818107490614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P18177476818107490614

/-! ## A037005.P13003315956052471220

`A023443(A053750(n+1))`
-/

namespace A037005.P13003315956052471220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053750 (n + 1)).toNat

end

end A037005.P13003315956052471220

/-! ## A037005.P10234403603555272318

`eq[1, A086994(2*A086994(n))]`
-/

namespace A037005.P10234403603555272318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 ((2 * A086994 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P10234403603555272318

/-! ## A037005.P7644153512437539093

`eq[A010718(n), A054249(n+1)]`
-/

namespace A037005.P7644153512437539093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P7644153512437539093

/-! ## A037005.P5832212359092785203

`eq[A040306(n), A072448(n+1)]`
-/

namespace A037005.P5832212359092785203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P5832212359092785203

/-! ## A037005.P15199869797231708919

`eq[A010711(n)+1, A054249(n+1)]`
-/

namespace A037005.P15199869797231708919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P15199869797231708919

/-! ## A037005.P8687986920958386708

`eq[A054249(n+1)+1, A010724(n)]`
-/

namespace A037005.P8687986920958386708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P8687986920958386708

/-! ## A037005.P9636171859254144596

`eq[A010703(n)+2, A054249(n+1)]`
-/

namespace A037005.P9636171859254144596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P9636171859254144596

/-! ## A037005.P14014000672116382808

`eq[A054249(n+1)+2, A010729(n)]`
-/

namespace A037005.P14014000672116382808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037005.P14014000672116382808

/-! ## A037005.P14125063198777628897

`A065254(A017341(n))-1`
-/

namespace A037005.P14125063198777628897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017341 n).toNat - 1

end

end A037005.P14125063198777628897

/-! ## A037005.P2625449013096482045

`A065254(A017329(n)+1)-1`
-/

namespace A037005.P2625449013096482045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017329 n + 1).toNat - 1

end

end A037005.P2625449013096482045

/-! ## A037005.P6765340462698054237

`A065254(A017317(n)+2)-1`
-/

namespace A037005.P6765340462698054237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017317 n + 2).toNat - 1

end

end A037005.P6765340462698054237

/-! ## A037005.P4829970285931313932

`A065254(A017353(n)-1)-1`
-/

namespace A037005.P4829970285931313932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017353 n - 1).toNat - 1

end

end A037005.P4829970285931313932

/-! ## A037005.P16435932166522809548

`A065254(A017365(n)-2)-1`
-/

namespace A037005.P16435932166522809548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017365 n - 2).toNat - 1

end

end A037005.P16435932166522809548

/-! ## A037005.P9718509684421605240

`A065254(A017461(n)-n)-1`
-/

namespace A037005.P9718509684421605240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017461 n - (n : ℤ)).toNat - 1

end

end A037005.P9718509684421605240

/-! ## A037005.P13525048164712919555

`eq[2, A179104(n+1)]`
-/

namespace A037005.P13525048164712919555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037005.P13525048164712919555

/-!
# A037006: Positions of the digit '8' in the decimal expansion of Pi.

The programs for A037006, there is no canonical definition to state claims against.
-/

/-! ## A037006.P9683082579302784456

`A053752(n+1)-1`
-/

namespace A037006.P9683082579302784456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1) - 1

end

end A037006.P9683082579302784456

/-! ## A037006.P18359122956347234166

`eq[8, A000796(n)]`
-/

namespace A037006.P18359122956347234166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P18359122956347234166

/-! ## A037006.P8120459625367304349

`eq[9, A123152(n+1)]`
-/

namespace A037006.P8120459625367304349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P8120459625367304349

/-! ## A037006.P102160426849437313

`A065254(A017365(n))-1`
-/

namespace A037006.P102160426849437313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017365 n).toNat - 1

end

end A037006.P102160426849437313

/-! ## A037006.P4586844517986908612

`A065254(A017353(n)+1)-1`
-/

namespace A037006.P4586844517986908612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017353 n + 1).toNat - 1

end

end A037006.P4586844517986908612

/-! ## A037006.P7449182906761830682

`A065254(A017341(n)+2)-1`
-/

namespace A037006.P7449182906761830682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017341 n + 2).toNat - 1

end

end A037006.P7449182906761830682

/-! ## A037006.P11329031619394594977

`A065254(A017377(n)-1)-1`
-/

namespace A037006.P11329031619394594977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017377 n - 1).toNat - 1

end

end A037006.P11329031619394594977

/-! ## A037006.P9766986967793501365

`eq[1, A153799(n)]+1`
-/

namespace A037006.P9766986967793501365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037006.P9766986967793501365

/-! ## A037006.P6544797755086178647

`eq[1, A030644(n)]`
-/

namespace A037006.P6544797755086178647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P6544797755086178647

/-! ## A037006.P4814952935611253448

`eq[9, A059833(n+1)]`
-/

namespace A037006.P4814952935611253448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P4814952935611253448

/-! ## A037006.P16393584079200232174

`A023443(A053752(n+1))`
-/

namespace A037006.P16393584079200232174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053752 (n + 1)).toNat

end

end A037006.P16393584079200232174

/-! ## A037006.P6689876925409881990

`eq[A010729(n), A054249(n+1)]`
-/

namespace A037006.P6689876925409881990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P6689876925409881990

/-! ## A037006.P13926699578639237347

`eq[A072448(n+1), A171441(n)]`
-/

namespace A037006.P13926699578639237347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P13926699578639237347

/-! ## A037006.P17440079219102022729

`eq[A010724(n)+1, A054249(n+1)]`
-/

namespace A037006.P17440079219102022729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P17440079219102022729

/-! ## A037006.P563837831406509812

`eq[A054249(n+1)+1, A010733(n)]`
-/

namespace A037006.P563837831406509812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P563837831406509812

/-! ## A037006.P1595865328782193293

`eq[A010718(n)+2, A054249(n+1)]`
-/

namespace A037006.P1595865328782193293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P1595865328782193293

/-! ## A037006.P14102717420571246573

`eq[A086994(n)+1, A086994(A086994(n))]`
-/

namespace A037006.P14102717420571246573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 ((A086994 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037006.P14102717420571246573

/-! ## A037006.P15706288402088232913

`eq[4, A179102(n+1)]`
-/

namespace A037006.P15706288402088232913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P15706288402088232913

/-! ## A037006.P615276836730240699

`eq[6, A119505(n+1)]`
-/

namespace A037006.P615276836730240699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037006.P615276836730240699

/-! ## A037006.P8691348919697590732

`lt[8, A179104(n+1)]`
-/

namespace A037006.P8691348919697590732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037006.P8691348919697590732

/-!
# A037007: Positions of the digit '9' in the decimal expansion of Pi, where positions 0, 1, 2,... correspond to digits 3, 1, 4, ....

The programs for A037007, there is no canonical definition to state claims against.
-/

/-! ## A037007.P6203215876665625402

`A053753(n+1)-1`
-/

namespace A037007.P6203215876665625402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053753 (n + 1) - 1

end

end A037007.P6203215876665625402

/-! ## A037007.P12526997342601780020

`∑[A108664(n+1)]-1`
-/

namespace A037007.P12526997342601780020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037007.P12526997342601780020

/-! ## A037007.P5201215267350308320

`A290562(A005928(3*n+2))+A053753(n+1)`
-/

namespace A037007.P5201215267350308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 (A005928 (3 * n + 2)).toNat + A053753 (n + 1)

end

end A037007.P5201215267350308320

/-! ## A037007.P7261734125983364773

`lt[8, A000796(n)]`
-/

namespace A037007.P7261734125983364773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037007.P7261734125983364773

/-! ## A037007.P9386719841883956782

`eq[A040020(n), A123152(n+1)]`
-/

namespace A037007.P9386719841883956782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P9386719841883956782

/-! ## A037007.P3342303756076702157

`a(n-1)+A139727(n)+1` with `a(0)=5`
-/

namespace A037007.P3342303756076702157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (A139727 n + 1)

end

end A037007.P3342303756076702157

/-! ## A037007.P3795942923750911148

`∑[A139727(A028310(n))+A000040(n+1)%2]-1`
-/

namespace A037007.P3795942923750911148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037007.P3795942923750911148

/-! ## A037007.P8536952512916118969

`eq[0, A030644(n)]`
-/

namespace A037007.P8536952512916118969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037007.P8536952512916118969

/-! ## A037007.P17463977424944428229

`eq[0, A059833(n+1)]`
-/

namespace A037007.P17463977424944428229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037007.P17463977424944428229

/-! ## A037007.P15716979384615861028

`A023443(A053753(n+1))`
-/

namespace A037007.P15716979384615861028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053753 (n + 1)).toNat

end

end A037007.P15716979384615861028

/-! ## A037007.P589842103333585496

`lt[A086994(A086994(n)+2), 1]`
-/

namespace A037007.P589842103333585496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 ((A086994 (n + 1) + 2).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037007.P589842103333585496

/-! ## A037007.P12147447491098260683

`eq[A010733(n), A054249(n+1)]`
-/

namespace A037007.P12147447491098260683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P12147447491098260683

/-! ## A037007.P1174457020784941038

`eq[A123152(n+1), A329503(n)]`
-/

namespace A037007.P1174457020784941038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P1174457020784941038

/-! ## A037007.P4616121111720786777

`eq[A100401(n)², A072448(n+1)]`
-/

namespace A037007.P4616121111720786777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P4616121111720786777

/-! ## A037007.P6640199029803054621

`eq[A100403(n)², A072448(n+1)]`
-/

namespace A037007.P6640199029803054621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P6640199029803054621

/-! ## A037007.P3208911272416750961

`eq[A010729(n)+1, A054249(n+1)]`
-/

namespace A037007.P3208911272416750961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P3208911272416750961

/-! ## A037007.P6649221601118474318

`eq[A010724(n)+2, A054249(n+1)]`
-/

namespace A037007.P6649221601118474318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P6649221601118474318

/-! ## A037007.P2007783256784176800

`eq[A010889(A123152(n+1)+n), A010889(n)]`
-/

namespace A037007.P2007783256784176800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A123152 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037007.P2007783256784176800

/-! ## A037007.P2528269403478979260

`A065254(A017377(n))-1`
-/

namespace A037007.P2528269403478979260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017377 n).toNat - 1

end

end A037007.P2528269403478979260

/-! ## A037007.P11941568169053489398

`A065254(A017365(n)+1)-1`
-/

namespace A037007.P11941568169053489398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017365 n + 1).toNat - 1

end

end A037007.P11941568169053489398

/-!
# A037008: Positions of the digit '0' in the decimal expansion of Pi, where positions 0, 1, 2, ... correspond to digits 3, 1, 4, ....

The programs for A037008, there is no canonical definition to state claims against.
-/

/-! ## A037008.P9270415001275231348

`A014976(n+1)-1`
-/

namespace A037008.P9270415001275231348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1) - 1

end

end A037008.P9270415001275231348

/-! ## A037008.P1123350878867166967

`A153881(n+2)+A014976(n+1)`
-/

namespace A037008.P1123350878867166967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A014976 (n + 1)

end

end A037008.P1123350878867166967

/-! ## A037008.P15973032029998919338

`A134824(2*n+3)+A014976(n+1)`
-/

namespace A037008.P15973032029998919338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * n + 3) + A014976 (n + 1)

end

end A037008.P15973032029998919338

/-! ## A037008.P16961895349405597202

`A120304(Δ[A073424(n)]²)+A014976(n+1)`
-/

namespace A037008.P16961895349405597202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 ((f1 (n + 1) - f1 n) ^ 2).toNat + A014976 (n + 1)

end

end A037008.P16961895349405597202

/-! ## A037008.P12269592081628713661

`A087003(A006530(3*(n+1)))+A014976(n+1)`
-/

namespace A037008.P12269592081628713661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A006530 (3 * (n + 1))).toNat + A014976 (n + 1)

end

end A037008.P12269592081628713661

/-! ## A037008.P18435595319524087494

`eq[0, A000796(n)]`
-/

namespace A037008.P18435595319524087494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P18435595319524087494

/-! ## A037008.P7365434205113491005

`eq[1, A123152(n+1)]`
-/

namespace A037008.P7365434205113491005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P7365434205113491005

/-! ## A037008.P8090752846598088654

`eq[0, A086994(n)]`
-/

namespace A037008.P8090752846598088654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P8090752846598088654

/-! ## A037008.P11374970016757091992

`eq[9, A030644(n)]`
-/

namespace A037008.P11374970016757091992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P11374970016757091992

/-! ## A037008.P8851315931271465596

`eq[0, A072448(n+1)]`
-/

namespace A037008.P8851315931271465596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P8851315931271465596

/-! ## A037008.P1079003200425122137

`eq[0, A086995(n+1)]`
-/

namespace A037008.P1079003200425122137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P1079003200425122137

/-! ## A037008.P8757597032404186678

`eq[0, A123153(n+1)]`
-/

namespace A037008.P8757597032404186678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P8757597032404186678

/-! ## A037008.P16508346639259954876

`eq[0, A261197(n+1)]`
-/

namespace A037008.P16508346639259954876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P16508346639259954876

/-! ## A037008.P7738629087091740521

`eq[1, A059833(n+1)]`
-/

namespace A037008.P7738629087091740521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P7738629087091740521

/-! ## A037008.P17948118217224105304

`A023443(A014976(n+1))`
-/

namespace A037008.P17948118217224105304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A014976 (n + 1)).toNat

end

end A037008.P17948118217224105304

/-! ## A037008.P10782744615670797118

`eq[6, A179104(n+1)]`
-/

namespace A037008.P10782744615670797118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P10782744615670797118

/-! ## A037008.P14050142663841884245

`eq[0, A001355(2*n+1)]`
-/

namespace A037008.P14050142663841884245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P14050142663841884245

/-! ## A037008.P6181074109045305688

`eq[0, A076790(2*n+1)]`
-/

namespace A037008.P6181074109045305688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P6181074109045305688

/-! ## A037008.P313185506040293858

`eq[0, A110766(2*n+1)]`
-/

namespace A037008.P313185506040293858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037008.P313185506040293858

/-!
# A037010: Differences between adjacent palindromic primes.

The programs for A037010, there is no canonical definition to state claims against.
-/

/-! ## A037010.P3935954150692180574

`A002385(n+2)-A002385(n+1)`
-/

namespace A037010.P3935954150692180574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 2) - A002385 (n + 1)

end

end A037010.P3935954150692180574

/-! ## A037010.P17931171532885797778

`Δ[A002385(n+1)]`
-/

namespace A037010.P17931171532885797778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P17931171532885797778

/-! ## A037010.P1379851441160095327

`abs(Δ[A002385(A008619(2*n))])`
-/

namespace A037010.P1379851441160095327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A037010.P1379851441160095327

/-! ## A037010.P2568884179712287070

`Δ[∩[A350836(n+1), A169829(n+2)]]`
-/

namespace A037010.P2568884179712287070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A037010.P2568884179712287070

/-! ## A037010.P1273888767228304421

`Δ[∩[A075800(n+1), A083137(n+1)]]`
-/

namespace A037010.P1273888767228304421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A037010.P1273888767228304421

/-! ## A037010.P9545258909833978050

`Δ[A069217(n+2)]`
-/

namespace A037010.P9545258909833978050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P9545258909833978050

/-! ## A037010.P778990404824575062

`A069217(n+3)-A069217(n+2)`
-/

namespace A037010.P778990404824575062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 3) - A069217 (n + 2)

end

end A037010.P778990404824575062

/-! ## A037010.P14725060163791799162

`Δ[p?[A002113(n+1)]]`
-/

namespace A037010.P14725060163791799162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P14725060163791799162

/-! ## A037010.P13448618674024223514

`Δ[p?[A033620(n+1)]]`
-/

namespace A037010.P13448618674024223514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P13448618674024223514

/-! ## A037010.P10524263632763617818

`Δ[p?[A061917(n+1)]]`
-/

namespace A037010.P10524263632763617818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P10524263632763617818

/-! ## A037010.P1956778784707689952

`Δ[p?[A062687(n+1)]]`
-/

namespace A037010.P1956778784707689952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P1956778784707689952

/-! ## A037010.P2645224010938112879

`Δ[p?[A071251(n+1)]]`
-/

namespace A037010.P2645224010938112879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P2645224010938112879

/-! ## A037010.P18444406706850655240

`Δ[p?[A072299(n+1)]]`
-/

namespace A037010.P18444406706850655240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P18444406706850655240

/-! ## A037010.P10301221727664945971

`Δ[p?[A073328(n+1)]]`
-/

namespace A037010.P10301221727664945971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P10301221727664945971

/-! ## A037010.P15567022134599090038

`Δ[p?[A075800(n+1)]]`
-/

namespace A037010.P15567022134599090038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P15567022134599090038

/-! ## A037010.P15043263968421418482

`Δ[p?[A080716(n+1)]]`
-/

namespace A037010.P15043263968421418482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P15043263968421418482

/-! ## A037010.P17937057234974555005

`Δ[p?[A083136(n+1)]]`
-/

namespace A037010.P17937057234974555005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P17937057234974555005

/-! ## A037010.P14403916584659087100

`Δ[p?[A083137(n+1)]]`
-/

namespace A037010.P14403916584659087100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037010.P14403916584659087100

/-!
# A037011: Baum-Sweet cubic sequence.

The programs for A037011, the canonical program `A037011.P1055633923386246763` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037011 has offset 1).

The definition of A037011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037011.P1055633923386246763

`A000035(A106737(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037011

/-- `A000035(A106737(n))` -/
def P1055633923386246763.Spec : Prop :=
  ∀ n, P1055633923386246763.a n = A037011 (n + 1)

theorem P1055633923386246763.correct : P1055633923386246763.Spec := by
  intro n
  simp only [A037011, Nat.add_sub_cancel]

end A037011

/-! ## A037011.P9308015463595040666

`A010052(A005940(1+n))`
-/

namespace A037011.P9308015463595040666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A005940 (1 + n)).toNat

end

end A037011.P9308015463595040666

namespace A037011

/-- `A010052(A005940(1+n))` -/
def P9308015463595040666.Spec : Prop :=
  ∀ n, P9308015463595040666.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P2568285895447068732

`char[record[xor(n, 2*n)]]`
-/

namespace A037011.P2568285895447068732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A037011.P2568285895447068732

namespace A037011

/-- `char[record[xor(n, 2*n)]]` -/
def P2568285895447068732.Spec : Prop :=
  ∀ n, (P2568285895447068732.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P2218054022442589244

`char[3*and(n, Δ[-n²])]`
-/

namespace A037011.P2218054022442589244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P2218054022442589244

namespace A037011

/-- `char[3*and(n, Δ[-n²])]` -/
def P2218054022442589244.Spec : Prop :=
  ∀ n, (P2218054022442589244.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P8707824851707016745

`char[3*eq[0, and(n, 2*n)]]`
-/

namespace A037011.P8707824851707016745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A037011.P8707824851707016745

namespace A037011

/-- `char[3*eq[0, and(n, 2*n)]]` -/
def P8707824851707016745.Spec : Prop :=
  ∀ n, (P8707824851707016745.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P1526517099345867757

`char[3*lt[and(n, 2*n), 1]]`
-/

namespace A037011.P1526517099345867757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A037011.P1526517099345867757

namespace A037011

/-- `char[3*lt[and(n, 2*n), 1]]` -/
def P1526517099345867757.Spec : Prop :=
  ∀ n, (P1526517099345867757.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P2232605354657282945

`char[3*(or(n, floor(n/2))-n)]`
-/

namespace A037011.P2232605354657282945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P2232605354657282945

namespace A037011

/-- `char[3*(or(n, floor(n/2))-n)]` -/
def P2232605354657282945.Spec : Prop :=
  ∀ n, (P2232605354657282945.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P5294694841466833103

`char[3*(2*n-and(n, 3*n))]`
-/

namespace A037011.P5294694841466833103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * n : ℤ) - (Nat.land n (3 * n) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P5294694841466833103

namespace A037011

/-- `char[3*(2*n-and(n, 3*n))]` -/
def P5294694841466833103.Spec : Prop :=
  ∀ n, (P5294694841466833103.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P2218211077161945762

`char[A088698(n)]`
-/

namespace A037011.P2218211077161945762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P2218211077161945762

namespace A037011

/-- `char[A088698(n)]` -/
def P2218211077161945762.Spec : Prop :=
  ∀ n, (P2218211077161945762.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P15183453914265178413

`char[A277335(n)]`
-/

namespace A037011.P15183453914265178413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P15183453914265178413

namespace A037011

/-- `char[A277335(n)]` -/
def P15183453914265178413.Spec : Prop :=
  ∀ n, (P15183453914265178413.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P924139958231036371

`A295896(2*n)`
-/

namespace A037011.P924139958231036371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 (2 * n)

end

end A037011.P924139958231036371

namespace A037011

/-- `A295896(2*n)` -/
def P924139958231036371.Spec : Prop :=
  ∀ n, P924139958231036371.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P14892684089837163436

`A245565(n)%2`
-/

namespace A037011.P14892684089837163436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245565 n) 2

end

end A037011.P14892684089837163436

namespace A037011

/-- `A245565(n)%2` -/
def P14892684089837163436.Spec : Prop :=
  ∀ n, P14892684089837163436.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P18113470149982574107

`A085359(n)%3`
-/

namespace A037011.P18113470149982574107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085359 n) 3

end

end A037011.P18113470149982574107

namespace A037011

/-- `A085359(n)%3` -/
def P18113470149982574107.Spec : Prop :=
  ∀ n, P18113470149982574107.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P5787299456906894481

`A255464(n)%3`
-/

namespace A037011.P5787299456906894481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255464 n) 3

end

end A037011.P5787299456906894481

namespace A037011

/-- `A255464(n)%3` -/
def P5787299456906894481.Spec : Prop :=
  ∀ n, P5787299456906894481.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P15235429319314825283

`char[record[A048724(n)]]`
-/

namespace A037011.P15235429319314825283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P15235429319314825283

namespace A037011

/-- `char[record[A048724(n)]]` -/
def P15235429319314825283.Spec : Prop :=
  ∀ n, (P15235429319314825283.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P11532601648472538235

`char[3*A003714(n)]`
-/

namespace A037011.P11532601648472538235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P11532601648472538235

namespace A037011

/-- `char[3*A003714(n)]` -/
def P11532601648472538235.Spec : Prop :=
  ∀ n, (P11532601648472538235.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P15949267249468208850

`char[xor(n, A268722(n))]`
-/

namespace A037011.P15949267249468208850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A268722 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P15949267249468208850

namespace A037011

/-- `char[xor(n, A268722(n))]` -/
def P15949267249468208850.Spec : Prop :=
  ∀ n, (P15949267249468208850.a n : ℤ) = A037011 (n + 1)

end A037011

/-! ## A037011.P12883366810647967243

`A057227(n+1)%2`
-/

namespace A037011.P12883366810647967243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057227 (n + 1)) 2

end

end A037011.P12883366810647967243

namespace A037011

/-- `A057227(n+1)%2` -/
def P12883366810647967243.Spec : Prop :=
  ∀ n, P12883366810647967243.a n = A037011 (n + 1)

end A037011

/-! ## A037011.P3099399540507351723

`char[record[A106409(n+1)]]`
-/

namespace A037011.P3099399540507351723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106409 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037011.P3099399540507351723

namespace A037011

/-- `char[record[A106409(n+1)]]` -/
def P3099399540507351723.Spec : Prop :=
  ∀ n, (P3099399540507351723.a n : ℤ) = A037011 (n + 1)

end A037011

/-!
# A037012: Triangle read by rows; row 0 is 0; the n-th row for n>0 contains the coefficients in the expansion of (1-x)*(1+x)^(n-1).

The programs for A037012, the canonical program `A037012.P10538222427797936235` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037012 has offset 0).

The definition of A037012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037012.P8720601290152244515

`T(n-1,k-1)+T(n-1,k)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A037012.P8720601290152244515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A037012.P8720601290152244515

namespace A037012

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P8720601290152244515.Spec : Prop :=
  ∀ n, P8720601290152244515.a n = A037012 n

end A037012

/-! ## A037012.P10538222427797936235

`-A008482(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037012

/-- `-A008482(n)` -/
def P10538222427797936235.Spec : Prop :=
  ∀ n, P10538222427797936235.a n = A037012 n

theorem P10538222427797936235.correct : P10538222427797936235.Spec := by
  intro n
  simp only [A037012]

end A037012

/-! ## A037012.P9593770439716495854

`Δ[A007318(n-1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A037012.P9593770439716495854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A007318 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037012.P9593770439716495854

namespace A037012

/-- `Δ[A007318(n-1)-a(n-1)]` -/
def P9593770439716495854.Spec : Prop :=
  ∀ n, P9593770439716495854.a n = A037012 n

end A037012

/-! ## A037012.P16190396239743446863

`A029618(n)-A029600(n)`
-/

namespace A037012.P16190396239743446863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n - A029600 n

end

end A037012.P16190396239743446863

namespace A037012

/-- `A029618(n)-A029600(n)` -/
def P16190396239743446863.Spec : Prop :=
  ∀ n, P16190396239743446863.a n = A037012 n

end A037012

/-! ## A037012.P6591246217772403380

`A080232(n)-A000007(n)`
-/

namespace A037012.P6591246217772403380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 n - A000007 n

end

end A037012.P6591246217772403380

namespace A037012

/-- `A080232(n)-A000007(n)` -/
def P6591246217772403380.Spec : Prop :=
  ∀ n, P6591246217772403380.a n = A037012 n

end A037012

/-! ## A037012.P525758696765656657

`A000007(n)-A112467(n)`
-/

namespace A037012.P525758696765656657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A112467 n

end

end A037012.P525758696765656657

namespace A037012

/-- `A000007(n)-A112467(n)` -/
def P525758696765656657.Spec : Prop :=
  ∀ n, P525758696765656657.a n = A037012 n

end A037012

/-! ## A037012.P6857298213166970170

`A093561(n)-A029618(n)`
-/

namespace A037012.P6857298213166970170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n - A029618 n

end

end A037012.P6857298213166970170

namespace A037012

/-- `A093561(n)-A029618(n)` -/
def P6857298213166970170.Spec : Prop :=
  ∀ n, P6857298213166970170.a n = A037012 n

end A037012

/-! ## A037012.P18428914644342516152

`A071919(n)-A097805(n)`
-/

namespace A037012.P18428914644342516152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A097805 n

end

end A037012.P18428914644342516152

namespace A037012

/-- `A071919(n)-A097805(n)` -/
def P18428914644342516152.Spec : Prop :=
  ∀ n, P18428914644342516152.a n = A037012 n

end A037012

/-! ## A037012.P13940222662148562329

`A093560(n)-A134058(n)`
-/

namespace A037012.P13940222662148562329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n - A134058 n

end

end A037012.P13940222662148562329

namespace A037012

/-- `A093560(n)-A134058(n)` -/
def P13940222662148562329.Spec : Prop :=
  ∀ n, P13940222662148562329.a n = A037012 n

end A037012

/-! ## A037012.P14642401449458015724

`A298485(n)-A071919(n)`
-/

namespace A037012.P14642401449458015724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298485 n - A071919 n

end

end A037012.P14642401449458015724

namespace A037012

/-- `A298485(n)-A071919(n)` -/
def P14642401449458015724.Spec : Prop :=
  ∀ n, P14642401449458015724.a n = A037012 n

end A037012

/-! ## A037012.P6934703957766767354

`A008482(n)*A057428(n)`
-/

namespace A037012.P6934703957766767354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n * A057428 n

end

end A037012.P6934703957766767354

namespace A037012

/-- `A008482(n)*A057428(n)` -/
def P6934703957766767354.Spec : Prop :=
  ∀ n, P6934703957766767354.a n = A037012 n

end A037012

/-! ## A037012.P11889626651055556755

`A057427(n)*A080232(n)`
-/

namespace A037012.P11889626651055556755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080232 n

end

end A037012.P11889626651055556755

namespace A037012

/-- `A057427(n)*A080232(n)` -/
def P11889626651055556755.Spec : Prop :=
  ∀ n, P11889626651055556755.a n = A037012 n

end A037012

/-! ## A037012.P5307090114475336028

`A057428(n)*A112467(n)`
-/

namespace A037012.P5307090114475336028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A112467 n

end

end A037012.P5307090114475336028

namespace A037012

/-- `A057428(n)*A112467(n)` -/
def P5307090114475336028.Spec : Prop :=
  ∀ n, P5307090114475336028.a n = A037012 n

end A037012

/-! ## A037012.P18334038499418441265

`A080232(n)%A000156(n)`
-/

namespace A037012.P18334038499418441265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080232 n) (A000156 n)

end

end A037012.P18334038499418441265

namespace A037012

/-- `A080232(n)%A000156(n)` -/
def P18334038499418441265.Spec : Prop :=
  ∀ n, P18334038499418441265.a n = A037012 n

end A037012

/-! ## A037012.P5126110736051913519

`and(A057428(n), A080232(n))`
-/

namespace A037012.P5126110736051913519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A080232 n)

end

end A037012.P5126110736051913519

namespace A037012

/-- `and(A057428(n), A080232(n))` -/
def P5126110736051913519.Spec : Prop :=
  ∀ n, P5126110736051913519.a n = A037012 n

end A037012

/-! ## A037012.P13624986520475166752

`and(A080232(n), A134824(n))`
-/

namespace A037012.P13624986520475166752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080232 n) (A134824 n)

end

end A037012.P13624986520475166752

namespace A037012

/-- `and(A080232(n), A134824(n))` -/
def P13624986520475166752.Spec : Prop :=
  ∀ n, P13624986520475166752.a n = A037012 n

end A037012

/-! ## A037012.P16095624987663501269

`A080232(A000038(n)²+n)`
-/

namespace A037012.P16095624987663501269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A037012.P16095624987663501269

namespace A037012

/-- `A080232(A000038(n)²+n)` -/
def P16095624987663501269.Spec : Prop :=
  ∀ n, P16095624987663501269.a n = A037012 n

end A037012

/-! ## A037012.P14674028857580001363

`1-(A112467(n)+A057427(n))`
-/

namespace A037012.P14674028857580001363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112467 n + A057427 n)

end

end A037012.P14674028857580001363

namespace A037012

/-- `1-(A112467(n)+A057427(n))` -/
def P14674028857580001363.Spec : Prop :=
  ∀ n, P14674028857580001363.a n = A037012 n

end A037012

/-! ## A037012.P11619823904897524550

`A008482(n)*A153881(n+1)`
-/

namespace A037012.P11619823904897524550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n * A153881 (n + 1)

end

end A037012.P11619823904897524550

namespace A037012

/-- `A008482(n)*A153881(n+1)` -/
def P11619823904897524550.Spec : Prop :=
  ∀ n, P11619823904897524550.a n = A037012 n

end A037012

/-! ## A037012.P6841846233192775103

`(A000007(n)-1)*A008482(n)`
-/

namespace A037012.P6841846233192775103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A008482 n

end

end A037012.P6841846233192775103

namespace A037012

/-- `(A000007(n)-1)*A008482(n)` -/
def P6841846233192775103.Spec : Prop :=
  ∀ n, P6841846233192775103.a n = A037012 n

end A037012

/-!
# A037013: Reading binary expansion from right to left, run lengths strictly decrease.

The programs for A037013, there is no canonical definition to state claims against.
-/

/-! ## A037013.P10544176863564447157

`eq[A005811(n), A124765(A003188(n))]`
-/

namespace A037013.P10544176863564447157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037013.P10544176863564447157

/-! ## A037013.P4056514843848958240

`record[A289813(A048300(n))]`
-/

namespace A037013.P4056514843848958240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037013.P4056514843848958240

/-! ## A037013.P9091302050853532659

`record[A292371(A048301(n))]`
-/

namespace A037013.P9091302050853532659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A048301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037013.P9091302050853532659

/-! ## A037013.P2466352629241886524

`record[A292372(A048301(n+1))]`
-/

namespace A037013.P2466352629241886524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037013.P2466352629241886524

/-! ## A037013.P18091419630966595418

`record[A292372(A048301(n))]*A054977(n)`
-/

namespace A037013.P18091419630966595418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A054977 n

end

end A037013.P18091419630966595418

/-!
# A037014: Numbers n with property that reading binary expansion from right to left (from least significant to most significant), run lengths do not increase.

The programs for A037014, there is no canonical definition to state claims against.
-/

/-! ## A037014.P2563666235551205432

`eq[n, n*A124765(A341915(n))]`
-/

namespace A037014.P2563666235551205432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124765 (A341915 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037014.P2563666235551205432

/-! ## A037014.P10485190968736867801

`eq[A330091(n), A361479(n)]`
-/

namespace A037014.P10485190968736867801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037014.P10485190968736867801

/-! ## A037014.P16937070227156165572

`eq[n, A335834(n)]`
-/

namespace A037014.P16937070227156165572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037014.P16937070227156165572

/-! ## A037014.P5240002948435318515

`eq[n, A056539(A335835(n))]`
-/

namespace A037014.P5240002948435318515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037014.P5240002948435318515

/-! ## A037014.P3085724986252524272

`A335834(record[gcd(n, A335834(n))])`
-/

namespace A037014.P3085724986252524272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A335834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037014.P3085724986252524272

/-! ## A037014.P2146579604606112429

`A335834(record[n/(1-A335834(n)+n)])`
-/

namespace A037014.P2146579604606112429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A335834 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A037014.P2146579604606112429

/-! ## A037014.P7041236921699491909

`lt[A003188(A335834(n)), A003188(n)+1]`
-/

namespace A037014.P7041236921699491909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A335834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037014.P7041236921699491909

/-! ## A037014.P10136624409246167450

`A335834(record[n*char[A335834(n)]])`
-/

namespace A037014.P10136624409246167450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037014.P10136624409246167450

/-!
# A037015: Numbers n with property that, reading binary expansion of n from right to left, run lengths strictly increase.

The programs for A037015, there is no canonical definition to state claims against.
-/

/-! ## A037015.P18107899907785224403

`eq[A005811(n), A124765(A341915(n))]`
-/

namespace A037015.P18107899907785224403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A341915 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037015.P18107899907785224403

/-! ## A037015.P3926977532333693153

`record[A289813(A048314(n+1))]`
-/

namespace A037015.P3926977532333693153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037015.P3926977532333693153

/-! ## A037015.P11324540529642139713

`record[A292371(A048315(n))]`
-/

namespace A037015.P11324540529642139713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A048315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037015.P11324540529642139713

/-! ## A037015.P2465910511507088390

`record[A059905(A048315(n+2))]`
-/

namespace A037015.P2465910511507088390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A048315 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037015.P2465910511507088390

/-! ## A037015.P11748681060263875947

`eq[0, A124764(xor(n, floor(n/2)))]`
-/

namespace A037015.P11748681060263875947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037015.P11748681060263875947

/-!
# A037016: Numbers n with property that reading binary expansion from right to left (least significant to most significant), run lengths do not decrease.

The programs for A037016, there is no canonical definition to state claims against.
-/

/-! ## A037016.P431052205459375175

`eq[n, n*A124765(A003188(n))]`
-/

namespace A037016.P431052205459375175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124765 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037016.P431052205459375175

/-! ## A037016.P12227056939508722884

`eq[n, A335835(n)]`
-/

namespace A037016.P12227056939508722884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037016.P12227056939508722884

/-! ## A037016.P9503577239729094405

`eq[n, A056539(A335834(n))]`
-/

namespace A037016.P9503577239729094405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335834 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037016.P9503577239729094405

/-! ## A037016.P11810436107283605247

`eq[A330091(n), A361480(n)]`
-/

namespace A037016.P11810436107283605247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037016.P11810436107283605247

/-! ## A037016.P2938895296380649802

`A335835(record[gcd(n, A335835(n))])`
-/

namespace A037016.P2938895296380649802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A335835 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037016.P2938895296380649802

/-! ## A037016.P5875823557181632615

`A335835(record[A335835(n)%(n+1)])`
-/

namespace A037016.P5875823557181632615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335835 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037016.P5875823557181632615

/-! ## A037016.P10881487339267556871

`A335835(record[n/(1-A335835(n)+n)])`
-/

namespace A037016.P10881487339267556871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A335835 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A037016.P10881487339267556871

/-!
# A037019: Let n = p_1*p_2*...*p_k be the prime factorization of n, with the primes sorted in descending order. Then a(n) = 2^(p_1 - 1)*3^(p_2 - 1)*...*A000040(k)^(p_k - 1).

The programs for A037019, the canonical program `A037019.P15080460677822071058` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037019 has offset 1).

The definition of A037019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037019.P8959619096090188433

`∑{d}[n+1, A130113(#)]`
-/

namespace A037019.P8959619096090188433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130113 d

end

end A037019.P8959619096090188433

namespace A037019

/-- `∑{d}[n+1, A130113(#)]` -/
def P8959619096090188433.Spec : Prop :=
  ∀ n, P8959619096090188433.a n = A037019 (n + 1)

end A037019

/-! ## A037019.P15080460677822071058

`A181821(A290641(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037019

/-- `A181821(A290641(n+1))` -/
def P15080460677822071058.Spec : Prop :=
  ∀ n, P15080460677822071058.a n = A037019 (n + 1)

theorem P15080460677822071058.correct : P15080460677822071058.Spec := by
  intro n
  simp only [A037019, Nat.add_sub_cancel]

end A037019

/-! ## A037019.P11339587218551276801

`A181821(∏{e}[A181821(n+1), A055003(#)])`
-/

namespace A037019.P11339587218551276801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055003 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A037019.P11339587218551276801

namespace A037019

/-- `A181821(∏{e}[A181821(n+1), A055003(#)])` -/
def P11339587218551276801.Spec : Prop :=
  ∀ n, P11339587218551276801.a n = A037019 (n + 1)

end A037019

/-! ## A037019.P11204738180868104728

`gcd(A003680(n+1), A369099(n+1))`
-/

namespace A037019.P11204738180868104728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003680 (n + 1)) (A369099 (n + 1))

end

end A037019.P11204738180868104728

namespace A037019

/-- `gcd(A003680(n+1), A369099(n+1))` -/
def P11204738180868104728.Spec : Prop :=
  ∀ n, (P11204738180868104728.a n : ℤ) = A037019 (n + 1)

end A037019

/-! ## A037019.P17042582535363219412

`filter[A077569(n+1), A323509(#)]`
-/

namespace A037019.P17042582535363219412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A037019.P17042582535363219412

namespace A037019

/-- `filter[A077569(n+1), A323509(#)]` -/
def P17042582535363219412.Spec : Prop :=
  ∀ n, P17042582535363219412.a n = A037019 (n + 1)

end A037019

/-!
# A037020: Numbers whose sum of proper (or aliquot) divisors is a prime.

The programs for A037020, the canonical program `A037020.P14570931020851944692` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037020 has offset 1).

The definition of A037020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037020.P14570931020851944692

`eq[1, A001222(A000203(n+2)-(n+2))]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037020

/-- `eq[1, A001222(A000203(n+2)-(n+2))]+2` -/
def P14570931020851944692.Spec : Prop :=
  ∀ n, (P14570931020851944692.a n : ℤ) = A037020 (n + 1)

theorem P14570931020851944692.correct : P14570931020851944692.Spec := by
  intro n
  simp only [A037020, Nat.add_sub_cancel]

end A037020

/-! ## A037020.P11640729904886023720

`eq[2, A000005(A000203(n+2)-(n+2))]+2`
-/

namespace A037020.P11640729904886023720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 2) - (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A037020.P11640729904886023720

namespace A037020

/-- `eq[2, A000005(A000203(n+2)-(n+2))]+2` -/
def P11640729904886023720.Spec : Prop :=
  ∀ n, (P11640729904886023720.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P13859753281865520479

`eq[1, A178601(n+2)]+2`
-/

namespace A037020.P13859753281865520479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178601 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A037020.P13859753281865520479

namespace A037020

/-- `eq[1, A178601(n+2)]+2` -/
def P13859753281865520479.Spec : Prop :=
  ∀ n, (P13859753281865520479.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P12934948266251348113

`eq[1, A001222(A173455(n+1))]+1`
-/

namespace A037020.P12934948266251348113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A173455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037020.P12934948266251348113

namespace A037020

/-- `eq[1, A001222(A173455(n+1))]+1` -/
def P12934948266251348113.Spec : Prop :=
  ∀ n, (P12934948266251348113.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P2291297476543679855

`eq[1, A001222(A001065(n+2))]+2`
-/

namespace A037020.P2291297476543679855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001065 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A037020.P2291297476543679855

namespace A037020

/-- `eq[1, A001222(A001065(n+2))]+2` -/
def P2291297476543679855.Spec : Prop :=
  ∀ n, (P2291297476543679855.a n : ℤ) = A037020 (n + 1)

theorem P2291297476543679855.correct : P2291297476543679855.Spec := by
  intro n
  simp only [A037020, Nat.add_sub_cancel, A037020.P2291297476543679855.f1, A037020.P2291297476543679855.f2, A037020.P2291297476543679855.a, A037020.P14570931020851944692.f1, A037020.P14570931020851944692.f2, A037020.P14570931020851944692.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001222, A001222.P11318177267732088261.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037020

/-! ## A037020.P16308399619974398085

`eq[1, A001222(A048050(n+1)+1)]+1`
-/

namespace A037020.P16308399619974398085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048050 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037020.P16308399619974398085

namespace A037020

/-- `eq[1, A001222(A048050(n+1)+1)]+1` -/
def P16308399619974398085.Spec : Prop :=
  ∀ n, (P16308399619974398085.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P6484438376734614931

`eq[2, A000005(A048050(n+1)+1)]+1`
-/

namespace A037020.P6484438376734614931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048050 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037020.P6484438376734614931

namespace A037020

/-- `eq[2, A000005(A048050(n+1)+1)]+1` -/
def P6484438376734614931.Spec : Prop :=
  ∀ n, (P6484438376734614931.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P8517732825390843142

`eq[3, A226602(A001065(n+1))]+1`
-/

namespace A037020.P8517732825390843142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037020.P8517732825390843142

namespace A037020

/-- `eq[3, A226602(A001065(n+1))]+1` -/
def P8517732825390843142.Spec : Prop :=
  ∀ n, (P8517732825390843142.a n : ℤ) = A037020 (n + 1)

end A037020

/-! ## A037020.P11836191488680182568

`eq[1, A286842(n+1)]+1`
-/

namespace A037020.P11836191488680182568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037020.P11836191488680182568

namespace A037020

/-- `eq[1, A286842(n+1)]+1` -/
def P11836191488680182568.Spec : Prop :=
  ∀ n, (P11836191488680182568.a n : ℤ) = A037020 (n + 1)

end A037020

/-!
# A037022: Triangle in which row n has the first n digits of sqrt(n) (truncated).

The programs for A037022, there is no canonical definition to state claims against.
-/

/-! ## A037022.P15578100087668435524

`A037023(n+1)-A037011(A064226(n))`
-/

namespace A037022.P15578100087668435524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037023 (n + 1) - A037011 (A064226 n).toNat

end

end A037022.P15578100087668435524

/-! ## A037022.P14556244788176290923

`A037023(n+1)-A025469(A274199(n))`
-/

namespace A037022.P14556244788176290923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037023 (n + 1) - A025469 (A274199 n).toNat

end

end A037022.P14556244788176290923

/-! ## A037022.P17956285071864857705

`and(A037023(n+1), A075427(A208501(n+1)))`
-/

namespace A037022.P17956285071864857705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037023 (n + 1)) (A075427 (A208501 (n + 1)).toNat)

end

end A037022.P17956285071864857705

/-! ## A037022.P16437686261493161584

`A037023(n+1)-A102683(A126120(n))`
-/

namespace A037022.P16437686261493161584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037023 (n + 1) - A102683 (A126120 n).toNat

end

end A037022.P16437686261493161584

/-! ## A037022.P2125958439846591064

`A037023(A077168(n))`
-/

namespace A037022.P2125958439846591064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037023 (A077168 n).toNat

end

end A037022.P2125958439846591064

/-!
# A037023: Triangle in which row n lists the first n digits of sqrt(n) (rounded).

The programs for A037023, there is no canonical definition to state claims against.
-/

/-! ## A037023.P11499911868778281202

`A037022(n+1)+A037011(A064226(n))`
-/

namespace A037023.P11499911868778281202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (n + 1) + A037011 (A064226 n).toNat

end

end A037023.P11499911868778281202

/-! ## A037023.P7081895391952560986

`A037022(n+1)+A025469(A274199(n))`
-/

namespace A037023.P7081895391952560986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (n + 1) + A025469 (A274199 n).toNat

end

end A037023.P7081895391952560986

/-! ## A037023.P14418660232600505817

`A102683(A126120(n))+A037022(n+1)`
-/

namespace A037023.P14418660232600505817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A126120 n).toNat + A037022 (n + 1)

end

end A037023.P14418660232600505817

/-! ## A037023.P8664511439923330539

`A037022(n+1)+A025469(A064226(3*n+2))`
-/

namespace A037023.P8664511439923330539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (n + 1) + A025469 (A064226 (3 * n + 2)).toNat

end

end A037023.P8664511439923330539

/-!
# A037024: Position of start of first occurrence of prime(n) after the decimal point in expansion of Pi.

The programs for A037024, there is no canonical definition to state claims against.
-/

/-! ## A037024.P6037263606832560400

`A014777(p?[comp[n²]])`
-/

namespace A037024.P6037263606832560400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A037024.P6037263606832560400

/-! ## A037024.P3436552564995409621

`A014777(Δ[A007504(n)])`
-/

namespace A037024.P3436552564995409621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (n + 1) - f1 n).toNat

end

end A037024.P3436552564995409621

/-! ## A037024.P15118814625891179079

`A014777(A000040(n+1))`
-/

namespace A037024.P15118814625891179079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A000040 (n + 1)).toNat

end

end A037024.P15118814625891179079

/-! ## A037024.P3976316170269545468

`A014777(A008578(n+2))`
-/

namespace A037024.P3976316170269545468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A008578 (n + 2)).toNat

end

end A037024.P3976316170269545468

/-! ## A037024.P14115082835117841912

`A014777(A182986(n+2))`
-/

namespace A037024.P14115082835117841912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A182986 (n + 2)).toNat

end

end A037024.P14115082835117841912

/-! ## A037024.P10610993114808545229

`A014777(eq[1, A105700(n)])`
-/

namespace A037024.P10610993114808545229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037024.P10610993114808545229

/-! ## A037024.P7641874280191622205

`A014777(eq[2, A005128(n)])`
-/

namespace A037024.P7641874280191622205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037024.P7641874280191622205

/-! ## A037024.P12253270870537929964

`A014777(record[A006530(n+2)])`
-/

namespace A037024.P12253270870537929964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037024.P12253270870537929964

/-! ## A037024.P3185214007577482569

`A014777(record[A014963(n+2)])`
-/

namespace A037024.P3185214007577482569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037024.P3185214007577482569

/-! ## A037024.P15351510906529400753

`A014777(record[A020639(n+2)])`
-/

namespace A037024.P15351510906529400753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037024.P15351510906529400753

/-! ## A037024.P4339992568175398489

`A014777(A040976(n+1)+2)`
-/

namespace A037024.P4339992568175398489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A040976 (n + 1) + 2).toNat

end

end A037024.P4339992568175398489

/-! ## A037024.P1607730743486882185

`A014777(eq[2, A000005(n+1)]+1)`
-/

namespace A037024.P1607730743486882185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037024.P1607730743486882185

/-!
# A037027: Skew Fibonacci-Pascal triangle read by rows.

The programs for A037027, the canonical program `A037027.P8251060023748046970` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037027 has offset 0).

The definition of A037027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037027.P8251060023748046970

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037027

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)` -/
def P8251060023748046970.Spec : Prop :=
  ∀ n, (P8251060023748046970.a n : ℤ) = A037027 n

theorem P8251060023748046970.correct : P8251060023748046970.Spec := by
  intro n
  simp only [A037027]

end A037027

/-! ## A037027.P5201794299233290747

`ceil(A209747(n+1)/2)`
-/

namespace A037027.P5201794299233290747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209747 (n + 1) : ℚ) / 2⌉

end

end A037027.P5201794299233290747

namespace A037027

/-- `ceil(A209747(n+1)/2)` -/
def P5201794299233290747.Spec : Prop :=
  ∀ n, P5201794299233290747.a n = A037027 n

end A037027

/-! ## A037027.P2176216852685362452

`A038137(A061579(n))`
-/

namespace A037027.P2176216852685362452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A061579 n).toNat

end

end A037027.P2176216852685362452

namespace A037027

/-- `A038137(A061579(n))` -/
def P2176216852685362452.Spec : Prop :=
  ∀ n, P2176216852685362452.a n = A037027 n

end A037027

/-! ## A037027.P17813432348320669172

`A038137(A038722(n+2))`
-/

namespace A037027.P17813432348320669172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A038722 (n + 2)).toNat

end

end A037027.P17813432348320669172

namespace A037027

/-- `A038137(A038722(n+2))` -/
def P17813432348320669172.Spec : Prop :=
  ∀ n, P17813432348320669172.a n = A037027 n

end A037027

/-! ## A037027.P7514326538278167359

`A038137(A114327(n)+n)`
-/

namespace A037027.P7514326538278167359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A114327 n + (n : ℤ)).toNat

end

end A037027.P7514326538278167359

namespace A037027

/-- `A038137(A114327(n)+n)` -/
def P7514326538278167359.Spec : Prop :=
  ∀ n, P7514326538278167359.a n = A037027 n

end A037027

/-! ## A037027.P5149855894352047480

`2*A210229(n+1)-A210230(n+1)`
-/

namespace A037027.P5149855894352047480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A210230 (n + 1)

end

end A037027.P5149855894352047480

namespace A037027

/-- `2*A210229(n+1)-A210230(n+1)` -/
def P5149855894352047480.Spec : Prop :=
  ∀ n, P5149855894352047480.a n = A037027 n

end A037027

/-! ## A037027.P11512009081793024620

`A155161(A000007(n)+n)+A055830(n)`
-/

namespace A037027.P11512009081793024620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A000007 n + (n : ℤ)).toNat + A055830 n

end

end A037027.P11512009081793024620

namespace A037027

/-- `A155161(A000007(n)+n)+A055830(n)` -/
def P11512009081793024620.Spec : Prop :=
  ∀ n, P11512009081793024620.a n = A037027 n

end A037027

/-! ## A037027.P6602646840128073901

`A122075(n)-A155161(n+1)`
-/

namespace A037027.P6602646840128073901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 n - A155161 (n + 1)

end

end A037027.P6602646840128073901

namespace A037027

/-- `A122075(n)-A155161(n+1)` -/
def P6602646840128073901.Spec : Prop :=
  ∀ n, P6602646840128073901.a n = A037027 n

end A037027

/-! ## A037027.P963501737110614579

`A155161(comp[∑[n]])`
-/

namespace A037027.P963501737110614579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A037027.P963501737110614579

namespace A037027

/-- `A155161(comp[∑[n]])` -/
def P963501737110614579.Spec : Prop :=
  ∀ n, P963501737110614579.a n = A037027 n

end A037027

/-! ## A037027.P17480594765210813639

`A209599(A245300(n))-A155161(n+1)`
-/

namespace A037027.P17480594765210813639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A245300 n).toNat - A155161 (n + 1)

end

end A037027.P17480594765210813639

namespace A037027

/-- `A209599(A245300(n))-A155161(n+1)` -/
def P17480594765210813639.Spec : Prop :=
  ∀ n, P17480594765210813639.a n = A037027 n

end A037027

/-!
# A037028: Prime closest to e^n.

The programs for A037028, there is no canonical definition to state claims against.
-/

/-! ## A037028.P591394761434637663

`A000040(A126137(n))`
-/

namespace A037028.P591394761434637663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A126137 n).toNat

end

end A037028.P591394761434637663

/-! ## A037028.P16399876300477549161

`A207790(2*A126137(n))`
-/

namespace A037028.P16399876300477549161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A126137 n).toNat

end

end A037028.P16399876300477549161

/-! ## A037028.P9876872052090022659

`A051697(ceil(exp(n)))`
-/

namespace A037028.P9876872052090022659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A037028.P9876872052090022659

/-! ## A037028.P3084566626660287248

`A077018(round(exp(n)))`
-/

namespace A037028.P3084566626660287248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A037028.P3084566626660287248

/-! ## A037028.P5158966088854985757

`A060308(A000495(n)+1)`
-/

namespace A037028.P5158966088854985757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A000495 n + 1).toNat

end

end A037028.P5158966088854985757

/-!
# A037029: Primes of the form 666*n + 1.

The programs for A037029, the canonical program `A037029.P13713327370861726249` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037029 has offset 1).

The definition of A037029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037029.P13713327370861726249

`p?[9*37*n+1]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037029

/-- `p?[9*37*n+1]` -/
def P13713327370861726249.Spec : Prop :=
  ∀ n, (P13713327370861726249.a n : ℤ) = A037029 (n + 1)

theorem P13713327370861726249.correct : P13713327370861726249.Spec := by
  intro n
  simp only [A037029, Nat.add_sub_cancel]

end A037029

/-! ## A037029.P3083344930528568220

`∩[9*37*n+1, A000040(n+1)]`
-/

namespace A037029.P3083344930528568220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (37 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037029.P3083344930528568220

namespace A037029

/-- `∩[9*37*n+1, A000040(n+1)]` -/
def P3083344930528568220.Spec : Prop :=
  ∀ n, (P3083344930528568220.a n : ℤ) = A037029 (n + 1)

end A037029

/-! ## A037029.P17809493751646723847

`A093178(p?[A017173(37*n)])`
-/

namespace A037029.P17809493751646723847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (37 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A037029.P17809493751646723847

namespace A037029

/-- `A093178(p?[A017173(37*n)])` -/
def P17809493751646723847.Spec : Prop :=
  ∀ n, P17809493751646723847.a n = A037029 (n + 1)

end A037029

/-!
# A037030: Numbers n such that 666*n + 1 is prime.

The programs for A037030, there is no canonical definition to state claims against.
-/

/-! ## A037030.P5103838176119169765

`eq[1, A001222(n*665+n+1)]`
-/

namespace A037030.P5103838176119169765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * 665 + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037030.P5103838176119169765

/-! ## A037030.P3855558129938811073

`A000010(A037029(n+1))%665`
-/

namespace A037030.P3855558129938811073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A037029 (n + 1)).toNat) 665

end

end A037030.P3855558129938811073

/-!
# A037031: Number of combinations of n objects taken pi(n) at a time.

The programs for A037031, the canonical program `A037031.P17145770370026652645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037031 has offset 0).

The definition of A037031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037031.P7684472344095427023

`A369854(n)+1`
-/

namespace A037031.P7684472344095427023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369854 n + 1

end

end A037031.P7684472344095427023

namespace A037031

/-- `A369854(n)+1` -/
def P7684472344095427023.Spec : Prop :=
  ∀ n, P7684472344095427023.a n = A037031 n

theorem P7684472344095427023.correct : P7684472344095427023.Spec := by
  intro n
  simp only [A037031, Nat.add_sub_cancel, A037031.P7684472344095427023.a, A037031.P17145770370026652645.f2, A037031.P17145770370026652645.f1, A037031.P17145770370026652645.a, A369854, A369854.P4226813083870044623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037031

/-! ## A037031.P17145770370026652645

`C(n, ∑[∑{p}[n, C(#, n)]])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037031

/-- `C(n, ∑[∑{p}[n, C(#, n)]])` -/
def P17145770370026652645.Spec : Prop :=
  ∀ n, (P17145770370026652645.a n : ℤ) = A037031 n

theorem P17145770370026652645.correct : P17145770370026652645.Spec := by
  intro n
  simp only [A037031]

end A037031

/-! ## A037031.P8380224043512100685

`C(n, A230980(n))`
-/

namespace A037031.P8380224043512100685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A230980 n).toNat

end

end A037031.P8380224043512100685

namespace A037031

/-- `C(n, A230980(n))` -/
def P8380224043512100685.Spec : Prop :=
  ∀ n, (P8380224043512100685.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P15427986274539852476

`C(n, A095117(n)-n)`
-/

namespace A037031.P15427986274539852476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A095117 n - (n : ℤ)).toNat

end

end A037031.P15427986274539852476

namespace A037031

/-- `C(n, A095117(n)-n)` -/
def P15427986274539852476.Spec : Prop :=
  ∀ n, (P15427986274539852476.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P12365694443538649211

`C(n, ∑[char[A007918(n)]])`
-/

namespace A037031.P12365694443538649211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P12365694443538649211

namespace A037031

/-- `C(n, ∑[char[A007918(n)]])` -/
def P12365694443538649211.Spec : Prop :=
  ∀ n, (P12365694443538649211.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P12822562680771893036

`C(n, abs(A063084(n+1)))`
-/

namespace A037031.P12822562680771893036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n |A063084 (n + 1)|.toNat

end

end A037031.P12822562680771893036

namespace A037031

/-- `C(n, abs(A063084(n+1)))` -/
def P12822562680771893036.Spec : Prop :=
  ∀ n, (P12822562680771893036.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P3940234877379571268

`C(n, A026233(n+1)-1)`
-/

namespace A037031.P3940234877379571268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A026233 (n + 1) - 1).toNat

end

end A037031.P3940234877379571268

namespace A037031

/-- `C(n, A026233(n+1)-1)` -/
def P3940234877379571268.Spec : Prop :=
  ∀ n, (P3940234877379571268.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P250397308648268141

`C(n, A086936(n+1)-1)`
-/

namespace A037031.P250397308648268141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A086936 (n + 1) - 1).toNat

end

end A037031.P250397308648268141

namespace A037031

/-- `C(n, A086936(n+1)-1)` -/
def P250397308648268141.Spec : Prop :=
  ∀ n, (P250397308648268141.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P14856709178783341200

`C(n, A055679(2*n+1))`
-/

namespace A037031.P14856709178783341200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A055679 (2 * n + 1)).toNat

end

end A037031.P14856709178783341200

namespace A037031

/-- `C(n, A055679(2*n+1))` -/
def P14856709178783341200.Spec : Prop :=
  ∀ n, (P14856709178783341200.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P13170411974131305045

`C(n, A056172(2*n+1))`
-/

namespace A037031.P13170411974131305045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A056172 (2 * n + 1)).toNat

end

end A037031.P13170411974131305045

namespace A037031

/-- `C(n, A056172(2*n+1))` -/
def P13170411974131305045.Spec : Prop :=
  ∀ n, (P13170411974131305045.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P8460356114894588558

`C(n, A242096(2*n+1))`
-/

namespace A037031.P8460356114894588558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A242096 (2 * n + 1)).toNat

end

end A037031.P8460356114894588558

namespace A037031

/-- `C(n, A242096(2*n+1))` -/
def P8460356114894588558.Spec : Prop :=
  ∀ n, (P8460356114894588558.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P13106067664866859966

`C(n, A294107(2*n+1))`
-/

namespace A037031.P13106067664866859966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A294107 (2 * n + 1)).toNat

end

end A037031.P13106067664866859966

namespace A037031

/-- `C(n, A294107(2*n+1))` -/
def P13106067664866859966.Spec : Prop :=
  ∀ n, (P13106067664866859966.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P15408545995176495537

`C(n, ∑[char[A000040(n+1)]])`
-/

namespace A037031.P15408545995176495537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P15408545995176495537

namespace A037031

/-- `C(n, ∑[char[A000040(n+1)]])` -/
def P15408545995176495537.Spec : Prop :=
  ∀ n, (P15408545995176495537.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P8718211584621891586

`C(n, ∑[char[A018252(n+1)]])`
-/

namespace A037031.P8718211584621891586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P8718211584621891586

namespace A037031

/-- `C(n, ∑[char[A018252(n+1)]])` -/
def P8718211584621891586.Spec : Prop :=
  ∀ n, (P8718211584621891586.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P17478355399162063846

`C(n, ∑[char[A006530(n+2)]])`
-/

namespace A037031.P17478355399162063846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P17478355399162063846

namespace A037031

/-- `C(n, ∑[char[A006530(n+2)]])` -/
def P17478355399162063846.Spec : Prop :=
  ∀ n, (P17478355399162063846.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P3229499566010886007

`C(n, ∑[char[A008578(n+2)]])`
-/

namespace A037031.P3229499566010886007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P3229499566010886007

namespace A037031

/-- `C(n, ∑[char[A008578(n+2)]])` -/
def P3229499566010886007.Spec : Prop :=
  ∀ n, (P3229499566010886007.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P12495461761376718020

`C(n, ∑[char[A020639(n+2)]])`
-/

namespace A037031.P12495461761376718020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P12495461761376718020

namespace A037031

/-- `C(n, ∑[char[A020639(n+2)]])` -/
def P12495461761376718020.Spec : Prop :=
  ∀ n, (P12495461761376718020.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P6901567209742401452

`C(n, A000720(A028310(n)))`
-/

namespace A037031.P6901567209742401452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000720 (A028310 n).toNat).toNat

end

end A037031.P6901567209742401452

namespace A037031

/-- `C(n, A000720(A028310(n)))` -/
def P6901567209742401452.Spec : Prop :=
  ∀ n, (P6901567209742401452.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P14682268901255791059

`C(n, A048865(A007918(n+1)))`
-/

namespace A037031.P14682268901255791059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A048865 (A007918 (n + 1)).toNat).toNat

end

end A037031.P14682268901255791059

namespace A037031

/-- `C(n, A048865(A007918(n+1)))` -/
def P14682268901255791059.Spec : Prop :=
  ∀ n, (P14682268901255791059.a n : ℤ) = A037031 n

end A037031

/-! ## A037031.P12443729135014277143

`C(n, A000720(A151800(n)-1))`
-/

namespace A037031.P12443729135014277143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000720 (A151800 n - 1).toNat).toNat

end

end A037031.P12443729135014277143

namespace A037031

/-- `C(n, A000720(A151800(n)-1))` -/
def P12443729135014277143.Spec : Prop :=
  ∀ n, (P12443729135014277143.a n : ℤ) = A037031 n

end A037031

/-!
# A037032: Total number of prime parts in all partitions of n.

The programs for A037032, there is no canonical definition to state claims against.
-/

/-! ## A037032.P17449771490563609023

`∑[A144120(n+1)]`
-/

namespace A037032.P17449771490563609023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037032.P17449771490563609023

/-! ## A037032.P14857818082199956904

`∑[A138137(n+1)-A144121(n+1)]`
-/

namespace A037032.P14857818082199956904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A144121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037032.P14857818082199956904

/-! ## A037032.P9926476192636436430

`A073335(n+1)-A281611(n+1)`
-/

namespace A037032.P9926476192636436430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) - A281611 (n + 1)

end

end A037032.P9926476192636436430

/-! ## A037032.P6767737769259019635

`A138137(n+1)+A006128(n)-A144119(n+1)`
-/

namespace A037032.P6767737769259019635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A006128 n - A144119 (n + 1))

end

end A037032.P6767737769259019635

/-! ## A037032.P9144989489123724506

`A006128(n+1)-A144119(n+1)`
-/

namespace A037032.P9144989489123724506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A144119 (n + 1)

end

end A037032.P9144989489123724506

/-! ## A037032.P11404306873768091149

`∑[A138137(n+1)]-A144119(n+1)`
-/

namespace A037032.P11404306873768091149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144119 (n + 1)

end

end A037032.P11404306873768091149

/-! ## A037032.P125903725493470834

`A006128(A000027(n+1))%A144119(n+1)`
-/

namespace A037032.P125903725493470834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 (A000027 (n + 1)).toNat) (A144119 (n + 1))

end

end A037032.P125903725493470834

/-! ## A037032.P3747637136458858227

`A006128(n+1)%A144119((n+1)%A000070(n+1))`
-/

namespace A037032.P3747637136458858227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 (n + 1)) (A144119 (Int.tmod (n + 1 : ℤ) (A000070 (n + 1))).toNat)

end

end A037032.P3747637136458858227

/-! ## A037032.P13664371892801990997

`A144115(n+1)+A144116(n+1)-A144119(n+1)`
-/

namespace A037032.P13664371892801990997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) + (A144116 (n + 1) - A144119 (n + 1))

end

end A037032.P13664371892801990997

/-!
# A037034: Least k such that 4*n*k-1 is a prime.

The programs for A037034, there is no canonical definition to state claims against.
-/

/-! ## A037034.P1026098982762676833

`A103961(2*(n+1))`
-/

namespace A037034.P1026098982762676833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (2 * (n + 1))

end

end A037034.P1026098982762676833

/-! ## A037034.P17632875817522709243

`A103961(n+2+n)-and(n, n-1)%2`
-/

namespace A037034.P17632875817522709243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2 + n) - Int.tmod (Int.land (n : ℤ) ((n : ℤ) - 1)) 2

end

end A037034.P17632875817522709243

/-! ## A037034.P14532458578050134968

`A000027(A103961(n+2+n)+3)-3`
-/

namespace A037034.P14532458578050134968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A103961 (n + 2 + n) + 3).toNat - 3

end

end A037034.P14532458578050134968

/-! ## A037034.P1481604467333811680

`A103961(n+2+n)-A255411(n)%2`
-/

namespace A037034.P1481604467333811680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2 + n) - Int.tmod (A255411 n) 2

end

end A037034.P1481604467333811680

/-! ## A037034.P8261394337518145848

`A103961(n+2+n)-A284920(n+1)%2`
-/

namespace A037034.P8261394337518145848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2 + n) - Int.tmod (A284920 (n + 1)) 2

end

end A037034.P8261394337518145848

/-! ## A037034.P9455942541234298763

`A103961(n+2+n)-A307958(n+1)%2`
-/

namespace A037034.P9455942541234298763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2 + n) - Int.tmod (A307958 (n + 1)) 2

end

end A037034.P9455942541234298763

/-! ## A037034.P15959994499881865982

`A016014(A239800(A103961(n+2+n)))`
-/

namespace A037034.P15959994499881865982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A239800 (A103961 (n + 2 + n)).toNat).toNat

end

end A037034.P15959994499881865982

/-! ## A037034.P7856567310006286659

`A053989(4*(n+1))`
-/

namespace A037034.P7856567310006286659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * (n + 1))

end

end A037034.P7856567310006286659

/-! ## A037034.P4575057879956890295

`A053989(A016825(n)+2)%A004771(n)`
-/

namespace A037034.P4575057879956890295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 (A016825 n + 2).toNat) (A004771 n)

end

end A037034.P4575057879956890295

/-! ## A037034.P16715546849413326004

`or(A000007(n), A053989(A016825(n)+2))`
-/

namespace A037034.P16715546849413326004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A053989 (A016825 n + 2).toNat)

end

end A037034.P16715546849413326004

/-! ## A037034.P2057722887522509918

`A053989(A008574(n+1))^and(1, A000040(n+1))`
-/

namespace A037034.P2057722887522509918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053989 (A008574 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A037034.P2057722887522509918

/-! ## A037034.P6559691543511173434

`A053989(A008486(n+1)+n+1)%A008486(n+1)`
-/

namespace A037034.P6559691543511173434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 (A008486 (n + 1) + (n + 1 : ℤ)).toNat) (A008486 (n + 1))

end

end A037034.P6559691543511173434

/-! ## A037034.P14061370966373078742

`A008619(A038700(4*(n+1)))/(2*(n+1))`
-/

namespace A037034.P14061370966373078742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A038700 (4 * (n + 1))).toNat : ℚ) / (2 * (n + 1) : ℚ)

end

end A037034.P14061370966373078742

/-! ## A037034.P9970170436117292663

`A053989(A008574(n+1))%A041384(n)`
-/

namespace A037034.P9970170436117292663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 (A008574 (n + 1)).toNat) (A041384 n)

end

end A037034.P9970170436117292663

/-!
# A037035: Least k such that 2^n+1+k is a prime.

The programs for A037035, the canonical program `A037035.P15953228204083907658` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037035 has offset 0).

The definition of A037035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037035.P15953228204083907658

`A013597(n)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037035

/-- `A013597(n)-1` -/
def P15953228204083907658.Spec : Prop :=
  ∀ n, P15953228204083907658.a n = A037035 n

theorem P15953228204083907658.correct : P15953228204083907658.Spec := by
  intro n
  simp only [A037035]

end A037035

/-! ## A037035.P17852563286776474498

`xor(1, A013597(xor(1, xor(1, n))))`
-/

namespace A037035.P17852563286776474498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A013597 (Nat.xor 1 (Nat.xor 1 n)))

end

end A037035.P17852563286776474498

namespace A037035

/-- `xor(1, A013597(xor(1, xor(1, n))))` -/
def P17852563286776474498.Spec : Prop :=
  ∀ n, P17852563286776474498.a n = A037035 n

end A037035

/-! ## A037035.P8153569722597105358

`A004442(A013597(n))`
-/

namespace A037035.P8153569722597105358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A013597 n).toNat

end

end A037035.P8153569722597105358

namespace A037035

/-- `A004442(A013597(n))` -/
def P8153569722597105358.Spec : Prop :=
  ∀ n, P8153569722597105358.a n = A037035 n

end A037035

/-! ## A037035.P13275234720231249313

`A289207(A013597(n)+1)`
-/

namespace A037035.P13275234720231249313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A013597 n + 1).toNat

end

end A037035.P13275234720231249313

namespace A037035

/-- `A289207(A013597(n)+1)` -/
def P13275234720231249313.Spec : Prop :=
  ∀ n, P13275234720231249313.a n = A037035 n

end A037035

/-! ## A037035.P16231990249363609993

`A248157(A013597(n)+2)`
-/

namespace A037035.P16231990249363609993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (A013597 n + 2).toNat

end

end A037035.P16231990249363609993

namespace A037035

/-- `A248157(A013597(n)+2)` -/
def P16231990249363609993.Spec : Prop :=
  ∀ n, P16231990249363609993.a n = A037035 n

end A037035

/-! ## A037035.P211898235264500055

`A023443(or(1, A013597(n)))`
-/

namespace A037035.P211898235264500055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.lor 1 (A013597 n)).toNat

end

end A037035.P211898235264500055

namespace A037035

/-- `A023443(or(1, A013597(n)))` -/
def P211898235264500055.Spec : Prop :=
  ∀ n, P211898235264500055.a n = A037035 n

end A037035

/-! ## A037035.P5527542655987689664

`xor(1, A013597(A028310(n)))`
-/

namespace A037035.P5527542655987689664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A013597 (A028310 n).toNat)

end

end A037035.P5527542655987689664

namespace A037035

/-- `xor(1, A013597(A028310(n)))` -/
def P5527542655987689664.Spec : Prop :=
  ∀ n, P5527542655987689664.a n = A037035 n

end A037035

/-! ## A037035.P343113902013637133

`A004443(xor(3, A013597(n)))`
-/

namespace A037035.P343113902013637133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor 3 (A013597 n)).toNat

end

end A037035.P343113902013637133

namespace A037035

/-- `A004443(xor(3, A013597(n)))` -/
def P343113902013637133.Spec : Prop :=
  ∀ n, P343113902013637133.a n = A037035 n

end A037035

/-! ## A037035.P8659717953732717025

`A004448(xor(6, A013597(n)))`
-/

namespace A037035.P8659717953732717025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (Int.xor 6 (A013597 n)).toNat

end

end A037035.P8659717953732717025

namespace A037035

/-- `A004448(xor(6, A013597(n)))` -/
def P8659717953732717025.Spec : Prop :=
  ∀ n, P8659717953732717025.a n = A037035 n

end A037035

/-! ## A037035.P4306210904579811381

`A092131(A233583(n+1))-1`
-/

namespace A037035.P4306210904579811381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A233583 (n + 1)).toNat - 1

end

end A037035.P4306210904579811381

namespace A037035

/-- `A092131(A233583(n+1))-1` -/
def P4306210904579811381.Spec : Prop :=
  ∀ n, P4306210904579811381.a n = A037035 n

end A037035

/-! ## A037035.P2155745210533640912

`A004443(2*A013597(n))/2`
-/

namespace A037035.P2155745210533640912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004443 (2 * A013597 n).toNat : ℚ) / 2

end

end A037035.P2155745210533640912

namespace A037035

/-- `A004443(2*A013597(n))/2` -/
def P2155745210533640912.Spec : Prop :=
  ∀ n, P2155745210533640912.a n = (A037035 n : ℚ)

end A037035

/-! ## A037035.P9019472536082948321

`2*A071045(or(1, A013597(n)))`
-/

namespace A037035.P9019472536082948321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071045 (Int.lor 1 (A013597 n)).toNat

end

end A037035.P9019472536082948321

namespace A037035

/-- `2*A071045(or(1, A013597(n)))` -/
def P9019472536082948321.Spec : Prop :=
  ∀ n, P9019472536082948321.a n = A037035 n

end A037035

/-! ## A037035.P6976105997923689125

`xor(A000034(2*n), A013597(n))`
-/

namespace A037035.P6976105997923689125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A013597 n)

end

end A037035.P6976105997923689125

namespace A037035

/-- `xor(A000034(2*n), A013597(n))` -/
def P6976105997923689125.Spec : Prop :=
  ∀ n, P6976105997923689125.a n = A037035 n

end A037035

/-! ## A037035.P16308190735984701571

`A162512(Δ[A007504(n)])+A013597(n)`
-/

namespace A037035.P16308190735984701571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (f1 (n + 1) - f1 n).toNat + A013597 n

end

end A037035.P16308190735984701571

namespace A037035

/-- `A162512(Δ[A007504(n)])+A013597(n)` -/
def P16308190735984701571.Spec : Prop :=
  ∀ n, P16308190735984701571.a n = A037035 n

end A037035

/-! ## A037035.P4212685935037517624

`A162512(A118749(n+1))+A013597(n)`
-/

namespace A037035.P4212685935037517624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A118749 (n + 1)).toNat + A013597 n

end

end A037035.P4212685935037517624

namespace A037035

/-- `A162512(A118749(n+1))+A013597(n)` -/
def P4212685935037517624.Spec : Prop :=
  ∀ n, P4212685935037517624.a n = A037035 n

end A037035

/-! ## A037035.P10919390452831938404

`and(A013597(n), A056453(n+1))`
-/

namespace A037035.P10919390452831938404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013597 n) (A056453 (n + 1))

end

end A037035.P10919390452831938404

namespace A037035

/-- `and(A013597(n), A056453(n+1))` -/
def P10919390452831938404.Spec : Prop :=
  ∀ n, P10919390452831938404.a n = A037035 n

end A037035

/-! ## A037035.P1398485364605306829

`A162512(A008578(2*n+5))+A013597(n)`
-/

namespace A037035.P1398485364605306829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A008578 (2 * n + 5)).toNat + A013597 n

end

end A037035.P1398485364605306829

namespace A037035

/-- `A162512(A008578(2*n+5))+A013597(n)` -/
def P1398485364605306829.Spec : Prop :=
  ∀ n, P1398485364605306829.a n = A037035 n

end A037035

/-! ## A037035.P10612487862294475648

`and(A013597(n), A230624(n+1))`
-/

namespace A037035.P10612487862294475648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013597 n) (A230624 (n + 1))

end

end A037035.P10612487862294475648

namespace A037035

/-- `and(A013597(n), A230624(n+1))` -/
def P10612487862294475648.Spec : Prop :=
  ∀ n, P10612487862294475648.a n = A037035 n

end A037035

/-! ## A037035.P96810346290552360

`A162512(A007348(n+1))+A013597(n)`
-/

namespace A037035.P96810346290552360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A007348 (n + 1)).toNat + A013597 n

end

end A037035.P96810346290552360

namespace A037035

/-- `A162512(A007348(n+1))+A013597(n)` -/
def P96810346290552360.Spec : Prop :=
  ∀ n, P96810346290552360.a n = A037035 n

end A037035

/-! ## A037035.P11180659227032484418

`A014210(n)-2^n-1`
-/

namespace A037035.P11180659227032484418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (2 ^ n : ℤ) - 1

end

end A037035.P11180659227032484418

namespace A037035

/-- `A014210(n)-2^n-1` -/
def P11180659227032484418.Spec : Prop :=
  ∀ n, P11180659227032484418.a n = A037035 n

theorem P11180659227032484418.correct : P11180659227032484418.Spec := by
  intro n
  simp only [A037035, Nat.add_sub_cancel, A037035.P11180659227032484418.a, A037035.P15953228204083907658.a, A013597, A013597.P2064454081418839404.a, A014210, A014210.P8900791388522812635.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037035

/-!
# A037036: Least k such that 2^n+1-k is a prime.

The programs for A037036, there is no canonical definition to state claims against.
-/

/-! ## A037036.P12508939052122332364

`A175851(2^n+1)-1`
-/

namespace A037036.P12508939052122332364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 ^ n + 1) - 1

end

end A037036.P12508939052122332364

/-! ## A037036.P1198988137897839175

`xor(1, A175851(A000051(n)))`
-/

namespace A037036.P1198988137897839175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A175851 (A000051 n).toNat)

end

end A037036.P1198988137897839175

/-! ## A037036.P2286985488613446441

`abs(A175851(A000079(n)+1)-1)`
-/

namespace A037036.P2286985488613446441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175851 (A000079 n + 1).toNat - 1|

end

end A037036.P2286985488613446441

/-! ## A037036.P5830940979574769128

`abs(A175851(A000225(n)+2)-1)`
-/

namespace A037036.P5830940979574769128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175851 (A000225 n + 2).toNat - 1|

end

end A037036.P5830940979574769128

/-!
# A037037: Number of primes between n and 3n.

The programs for A037037, the canonical program `A037037.P10824108654988819011` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037037 has offset 1).

The definition of A037037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037037.P10824108654988819011

`A100637(n)-A230980(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037037

/-- `A100637(n)-A230980(n)` -/
def P10824108654988819011.Spec : Prop :=
  ∀ n, P10824108654988819011.a n = A037037 (n + 1)

theorem P10824108654988819011.correct : P10824108654988819011.Spec := by
  intro n
  simp only [A037037, Nat.add_sub_cancel]

end A037037

/-! ## A037037.P16597331294822285235

`A074990(n+1)+A010051(n+1)`
-/

namespace A037037.P16597331294822285235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (n + 1) + A010051 (n + 1)

end

end A037037.P16597331294822285235

namespace A037037

/-- `A074990(n+1)+A010051(n+1)` -/
def P16597331294822285235.Spec : Prop :=
  ∀ n, P16597331294822285235.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P17397540725923232330

`A100637(n)-∑[char[A000040(n+1)]]`
-/

namespace A037037.P17397540725923232330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037037.P17397540725923232330

namespace A037037

/-- `A100637(n)-∑[char[A000040(n+1)]]` -/
def P17397540725923232330.Spec : Prop :=
  ∀ n, P17397540725923232330.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P18359460437854197513

`A289493(n+1)+A056171(2*n+1)`
-/

namespace A037037.P18359460437854197513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1) + A056171 (2 * n + 1)

end

end A037037.P18359460437854197513

namespace A037037

/-- `A289493(n+1)+A056171(2*n+1)` -/
def P18359460437854197513.Spec : Prop :=
  ∀ n, P18359460437854197513.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P3802135461765807420

`A000720(3*(n+1))-∑[char[A000040(n+1)]]`
-/

namespace A037037.P3802135461765807420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037037.P3802135461765807420

namespace A037037

/-- `A000720(3*(n+1))-∑[char[A000040(n+1)]]` -/
def P3802135461765807420.Spec : Prop :=
  ∀ n, P3802135461765807420.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P6591864626206123778

`A000720(3*(n+1))-∑[char[A006530(n+2)]]`
-/

namespace A037037.P6591864626206123778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037037.P6591864626206123778

namespace A037037

/-- `A000720(3*(n+1))-∑[char[A006530(n+2)]]` -/
def P6591864626206123778.Spec : Prop :=
  ∀ n, P6591864626206123778.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P1811431492856434102

`A099801(A294732(n+2))-A230980(n)`
-/

namespace A037037.P1811431492856434102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A294732 (n + 2)).toNat - A230980 n

end

end A037037.P1811431492856434102

namespace A037037

/-- `A099801(A294732(n+2))-A230980(n)` -/
def P1811431492856434102.Spec : Prop :=
  ∀ n, P1811431492856434102.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P8278326334918747743

`A000720(3*(n+1))-A000720(A028310(n))`
-/

namespace A037037.P8278326334918747743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1)) - A000720 (A028310 n).toNat

end

end A037037.P8278326334918747743

namespace A037037

/-- `A000720(3*(n+1))-A000720(A028310(n))` -/
def P8278326334918747743.Spec : Prop :=
  ∀ n, P8278326334918747743.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P5118547020740534536

`A065475(A035250(n+1))+A289493(n+1)-1`
-/

namespace A037037.P5118547020740534536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A035250 (n + 1)).toNat + (A289493 (n + 1) - 1)

end

end A037037.P5118547020740534536

namespace A037037

/-- `A065475(A035250(n+1))+A289493(n+1)-1` -/
def P5118547020740534536.Spec : Prop :=
  ∀ n, P5118547020740534536.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P3880811497268055700

`A010051(n+1)+A100637(n)-A000720(n+1)`
-/

namespace A037037.P3880811497268055700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A100637 n - A000720 (n + 1))

end

end A037037.P3880811497268055700

namespace A037037

/-- `A010051(n+1)+A100637(n)-A000720(n+1)` -/
def P3880811497268055700.Spec : Prop :=
  ∀ n, P3880811497268055700.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P5932172137900241511

`A035250(n+1)+A100637(n)-A099802(n+1)`
-/

namespace A037037.P5932172137900241511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) + (A100637 n - A099802 (n + 1))

end

end A037037.P5932172137900241511

namespace A037037

/-- `A035250(n+1)+A100637(n)-A099802(n+1)` -/
def P5932172137900241511.Spec : Prop :=
  ∀ n, P5932172137900241511.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P2448761627696169885

`A100637(n)-(A084360(n+1)+A084360(n+2))`
-/

namespace A037037.P2448761627696169885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - (A084360 (n + 1) + A084360 (n + 2))

end

end A037037.P2448761627696169885

namespace A037037

/-- `A100637(n)-(A084360(n+1)+A084360(n+2))` -/
def P2448761627696169885.Spec : Prop :=
  ∀ n, P2448761627696169885.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P269677137364114244

`A074990(n+1)+A082460(n+1)-A084360(n+1)`
-/

namespace A037037.P269677137364114244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (n + 1) + (A082460 (n + 1) - A084360 (n + 1))

end

end A037037.P269677137364114244

namespace A037037

/-- `A074990(n+1)+A082460(n+1)-A084360(n+1)` -/
def P269677137364114244.Spec : Prop :=
  ∀ n, P269677137364114244.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P5594275943307675668

`A099802(A007494(n+1))-A230980(n)`
-/

namespace A037037.P5594275943307675668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A007494 (n + 1)).toNat - A230980 n

end

end A037037.P5594275943307675668

namespace A037037

/-- `A099802(A007494(n+1))-A230980(n)` -/
def P5594275943307675668.Spec : Prop :=
  ∀ n, P5594275943307675668.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P2326063916174304095

`A229989(2*(n+1))`
-/

namespace A037037.P2326063916174304095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229989 (2 * (n + 1))

end

end A037037.P2326063916174304095

namespace A037037

/-- `A229989(2*(n+1))` -/
def P2326063916174304095.Spec : Prop :=
  ∀ n, P2326063916174304095.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P4511317840665684436

`A100637(n)-A056172(2*n+1)`
-/

namespace A037037.P4511317840665684436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A056172 (2 * n + 1)

end

end A037037.P4511317840665684436

namespace A037037

/-- `A100637(n)-A056172(2*n+1)` -/
def P4511317840665684436.Spec : Prop :=
  ∀ n, P4511317840665684436.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P10217663402166298321

`A100637(n)-A242096(2*n+1)`
-/

namespace A037037.P10217663402166298321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A242096 (2 * n + 1)

end

end A037037.P10217663402166298321

namespace A037037

/-- `A100637(n)-A242096(2*n+1)` -/
def P10217663402166298321.Spec : Prop :=
  ∀ n, P10217663402166298321.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P3383096987922458158

`A230980(3*(n+1))-A230980(n)`
-/

namespace A037037.P3383096987922458158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (3 * (n + 1)) - A230980 n

end

end A037037.P3383096987922458158

namespace A037037

/-- `A230980(3*(n+1))-A230980(n)` -/
def P3383096987922458158.Spec : Prop :=
  ∀ n, P3383096987922458158.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P1594081406787354128

`A230772(2*(n+1))+A035250(n+1)`
-/

namespace A037037.P1594081406787354128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (2 * (n + 1)) + A035250 (n + 1)

end

end A037037.P1594081406787354128

namespace A037037

/-- `A230772(2*(n+1))+A035250(n+1)` -/
def P1594081406787354128.Spec : Prop :=
  ∀ n, P1594081406787354128.a n = A037037 (n + 1)

end A037037

/-! ## A037037.P10651412987954257923

`A036234(3*(n+1))-A036234(A014684(n+1))`
-/

namespace A037037.P10651412987954257923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (3 * (n + 1)) - A036234 (A014684 (n + 1)).toNat

end

end A037037.P10651412987954257923

namespace A037037

/-- `A036234(3*(n+1))-A036234(A014684(n+1))` -/
def P10651412987954257923.Spec : Prop :=
  ∀ n, P10651412987954257923.a n = A037037 (n + 1)

end A037037

/-!
# A037038: Number of primes between n and 4n+1.

The programs for A037038, the canonical program `A037038.P14570702450093468220` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037038 has offset 1).

The definition of A037038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037038.P14570702450093468220

`A099801(2*(n+1))-A230980(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037038

/-- `A099801(2*(n+1))-A230980(n)` -/
def P14570702450093468220.Spec : Prop :=
  ∀ n, P14570702450093468220.a n = A037038 (n + 1)

theorem P14570702450093468220.correct : P14570702450093468220.Spec := by
  intro n
  simp only [A037038, Nat.add_sub_cancel]

end A037038

/-! ## A037038.P6486221199742843277

`A035250(2*n+3)+A035250(n+1)`
-/

namespace A037038.P6486221199742843277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (2 * n + 3) + A035250 (n + 1)

end

end A037038.P6486221199742843277

namespace A037038

/-- `A035250(2*n+3)+A035250(n+1)` -/
def P6486221199742843277.Spec : Prop :=
  ∀ n, P6486221199742843277.a n = A037038 (n + 1)

end A037038

/-! ## A037038.P9331011558154158689

`A000720(A130824(n+2))-A230980(n)`
-/

namespace A037038.P9331011558154158689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130824 (n + 2)).toNat - A230980 n

end

end A037038.P9331011558154158689

namespace A037038

/-- `A000720(A130824(n+2))-A230980(n)` -/
def P9331011558154158689.Spec : Prop :=
  ∀ n, P9331011558154158689.a n = A037038 (n + 1)

end A037038

/-! ## A037038.P3065740867556486641

`A230980(4*n+5)-A230980(n)`
-/

namespace A037038.P3065740867556486641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (4 * n + 5) - A230980 n

end

end A037038.P3065740867556486641

namespace A037038

/-- `A230980(4*n+5)-A230980(n)` -/
def P3065740867556486641.Spec : Prop :=
  ∀ n, P3065740867556486641.a n = A037038 (n + 1)

end A037038

/-! ## A037038.P16049359404089232761

`A055679(A004769(n))-A230980(n)`
-/

namespace A037038.P16049359404089232761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A004769 n).toNat - A230980 n

end

end A037038.P16049359404089232761

namespace A037038

/-- `A055679(A004769(n))-A230980(n)` -/
def P16049359404089232761.Spec : Prop :=
  ∀ n, P16049359404089232761.a n = A037038 (n + 1)

end A037038

/-!
# A037039: Least k such that 4*n*k+1 is a prime.

The programs for A037039, there is no canonical definition to state claims against.
-/

/-! ## A037039.P1457769239538107851

`floor(A070848(n+1)/(4*(n+1)))`
-/

namespace A037039.P1457769239538107851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070848 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)⌋

end

end A037039.P1457769239538107851

/-! ## A037039.P8485488886373383496

`A028242(A070848(n+1)%(2*n+1))`
-/

namespace A037039.P8485488886373383496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.tmod (A070848 (n + 1)) (2 * n + 1 : ℤ)).toNat

end

end A037039.P8485488886373383496

/-! ## A037039.P11963713906749510073

`A016014(2*(n+1))`
-/

namespace A037039.P11963713906749510073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (2 * (n + 1))

end

end A037039.P11963713906749510073

/-! ## A037039.P12373922802231949863

`A034693(4*(n+1))`
-/

namespace A037039.P12373922802231949863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (4 * (n + 1))

end

end A037039.P12373922802231949863

/-! ## A037039.P3995064871951698212

`lcm(char[1]+1, A016014(A103517(n)))`
-/

namespace A037039.P3995064871951698212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A016014 (A103517 n).toNat)

end

end A037039.P3995064871951698212

/-! ## A037039.P10110198183896020558

`A000027(A016014(record[2*or(1, n)-n]))`
-/

namespace A037039.P10110198183896020558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A037039.P10110198183896020558

/-! ## A037039.P12085121013504094359

`lcm(A016014(A103517(n)), A033999(n))`
-/

namespace A037039.P12085121013504094359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016014 (A103517 n).toNat) (A033999 n)

end

end A037039.P12085121013504094359

/-! ## A037039.P488776259297343404

`or(A000007(n), A016014(A103517(n)))`
-/

namespace A037039.P488776259297343404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A016014 (A103517 n).toNat)

end

end A037039.P488776259297343404

/-! ## A037039.P6428734765567000011

`A016014(A103517(n))+A000007(n+1)`
-/

namespace A037039.P6428734765567000011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A103517 n).toNat + A000007 (n + 1)

end

end A037039.P6428734765567000011

/-! ## A037039.P15700282231768284390

`A016014(A103517(n))*A033999(2*n)`
-/

namespace A037039.P15700282231768284390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A103517 n).toNat * A033999 (2 * n)

end

end A037039.P15700282231768284390

/-! ## A037039.P11224139307233105104

`gcd(A000038(n), A016014(A005843(n+1)))`
-/

namespace A037039.P11224139307233105104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A016014 (A005843 (n + 1)).toNat)

end

end A037039.P11224139307233105104

/-! ## A037039.P5892255838417791448

`A016014(A005843(n+1))+A000038(n+1)`
-/

namespace A037039.P5892255838417791448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A005843 (n + 1)).toNat + A000038 (n + 1)

end

end A037039.P5892255838417791448

/-! ## A037039.P5385494405772007916

`A034693(A008586(n+1))%A034694(n+1)`
-/

namespace A037039.P5385494405772007916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034693 (A008586 (n + 1)).toNat) (A034694 (n + 1))

end

end A037039.P5385494405772007916

/-! ## A037039.P15414966460354174636

`A016014(A103517(n))/A033999(A016014(n+1))²`
-/

namespace A037039.P15414966460354174636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016014 (A103517 n).toNat : ℚ) / (A033999 (A016014 (n + 1)).toNat ^ 2 : ℚ)

end

end A037039.P15414966460354174636

/-! ## A037039.P12571571096734345150

`A000010(A086507(4*(n+1)))/(4*(n+1))`
-/

namespace A037039.P12571571096734345150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A086507 (4 * (n + 1))).toNat : ℚ) / (4 * (n + 1) : ℚ)

end

end A037039.P12571571096734345150

/-! ## A037039.P10830350665655685331

`A000010(A070848(n+1))%A004767(n)`
-/

namespace A037039.P10830350665655685331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A070848 (n + 1)).toNat) (A004767 n)

end

end A037039.P10830350665655685331

/-!
# A037040: Number of odd nonprimes < (2n+1)^2.

The programs for A037040, the canonical program `A037040.P6394171430064314896` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037040 has offset 0).

The definition of A037040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037040.P6394171430064314896

`A038377(n)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037040

/-- `A038377(n)-1` -/
def P6394171430064314896.Spec : Prop :=
  ∀ n, P6394171430064314896.a n = A037040 n

theorem P6394171430064314896.correct : P6394171430064314896.Spec := by
  intro n
  simp only [A037040]

end A037040

/-! ## A037040.P12569520584437648628

`2*n²+2*n+1-A000720((2*n+1)²+1)`
-/

namespace A037040.P12569520584437648628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + 2 * n + 1 : ℤ) - A000720 ((2 * n + 1) ^ 2 + 1)

end

end A037040.P12569520584437648628

namespace A037040

/-- `2*n²+2*n+1-A000720((2*n+1)²+1)` -/
def P12569520584437648628.Spec : Prop :=
  ∀ n, P12569520584437648628.a n = A037040 n

theorem P12569520584437648628.correct : P12569520584437648628.Spec := by
  intro n
  simp only [A037040, Nat.add_sub_cancel, A037040.P12569520584437648628.a, A037040.P6394171430064314896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A038377, A038377.P1335350978526226774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037040

/-! ## A037040.P10951710134941298684

`A109039(A006047(n))+A038377(n)`
-/

namespace A037040.P10951710134941298684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A006047 n).toNat + A038377 n

end

end A037040.P10951710134941298684

namespace A037040

/-- `A109039(A006047(n))+A038377(n)` -/
def P10951710134941298684.Spec : Prop :=
  ∀ n, P10951710134941298684.a n = A037040 n

end A037040

/-! ## A037040.P18013964370558438333

`A109039(A038148(n+1))+A038377(n)`
-/

namespace A037040.P18013964370558438333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A038148 (n + 1)).toNat + A038377 n

end

end A037040.P18013964370558438333

namespace A037040

/-- `A109039(A038148(n+1))+A038377(n)` -/
def P18013964370558438333.Spec : Prop :=
  ∀ n, P18013964370558438333.a n = A037040 n

end A037040

/-! ## A037040.P14010410797324200905

`A057428(n+1)+A038377(n)`
-/

namespace A037040.P14010410797324200905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A038377 n

end

end A037040.P14010410797324200905

namespace A037040

/-- `A057428(n+1)+A038377(n)` -/
def P14010410797324200905.Spec : Prop :=
  ∀ n, P14010410797324200905.a n = A037040 n

theorem P14010410797324200905.correct : P14010410797324200905.Spec := by
  intro n
  simp only [A037040, Nat.add_sub_cancel, A037040.P14010410797324200905.a, A037040.P6394171430064314896.a, A038377, A038377.P1335350978526226774.a, A057428, A057428.P2999489532230392221.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037040

/-! ## A037040.P11404220515187442972

`A067856(A078138(n+1))+A038377(n)`
-/

namespace A037040.P11404220515187442972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A078138 (n + 1)).toNat + A038377 n

end

end A037040.P11404220515187442972

namespace A037040

/-- `A067856(A078138(n+1))+A038377(n)` -/
def P11404220515187442972.Spec : Prop :=
  ∀ n, P11404220515187442972.a n = A037040 n

end A037040

/-! ## A037040.P15375693051776427643

`A280193(2*n+1)+A038377(n)`
-/

namespace A037040.P15375693051776427643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A038377 n

end

end A037040.P15375693051776427643

namespace A037040

/-- `A280193(2*n+1)+A038377(n)` -/
def P15375693051776427643.Spec : Prop :=
  ∀ n, P15375693051776427643.a n = A037040 n

end A037040

/-! ## A037040.P4373891995067203020

`abs(A038377(n)+A008683(A339342(n+1)))`
-/

namespace A037040.P4373891995067203020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038377 n + A008683 (A339342 (n + 1)).toNat|

end

end A037040.P4373891995067203020

namespace A037040

/-- `abs(A038377(n)+A008683(A339342(n+1)))` -/
def P4373891995067203020.Spec : Prop :=
  ∀ n, P4373891995067203020.a n = A037040 n

end A037040

/-! ## A037040.P9291066883536730616

`abs(A038377(n)+A008683(A339347(n+1)))`
-/

namespace A037040.P9291066883536730616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038377 n + A008683 (A339347 (n + 1)).toNat|

end

end A037040.P9291066883536730616

namespace A037040

/-- `abs(A038377(n)+A008683(A339347(n+1)))` -/
def P9291066883536730616.Spec : Prop :=
  ∀ n, P9291066883536730616.a n = A037040 n

end A037040

/-! ## A037040.P13795033252798943538

`A259024(A016969(n))+A038377(n)`
-/

namespace A037040.P13795033252798943538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (A016969 n).toNat + A038377 n

end

end A037040.P13795033252798943538

namespace A037040

/-- `A259024(A016969(n))+A038377(n)` -/
def P13795033252798943538.Spec : Prop :=
  ∀ n, P13795033252798943538.a n = A037040 n

end A037040

/-! ## A037040.P8641164345147925739

`A067856(A045453(n+1))+A038377(n)`
-/

namespace A037040.P8641164345147925739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A045453 (n + 1)).toNat + A038377 n

end

end A037040.P8641164345147925739

namespace A037040

/-- `A067856(A045453(n+1))+A038377(n)` -/
def P8641164345147925739.Spec : Prop :=
  ∀ n, P8641164345147925739.a n = A037040 n

end A037040

/-! ## A037040.P13033914320314650420

`A067856(A040991(n+1))+A038377(n)`
-/

namespace A037040.P13033914320314650420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A040991 (n + 1)).toNat + A038377 n

end

end A037040.P13033914320314650420

namespace A037040

/-- `A067856(A040991(n+1))+A038377(n)` -/
def P13033914320314650420.Spec : Prop :=
  ∀ n, P13033914320314650420.a n = A037040 n

end A037040

/-! ## A037040.P1125741016393298795

`A067856(A123043(n+1))+A038377(n)`
-/

namespace A037040.P1125741016393298795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A123043 (n + 1)).toNat + A038377 n

end

end A037040.P1125741016393298795

namespace A037040

/-- `A067856(A123043(n+1))+A038377(n)` -/
def P1125741016393298795.Spec : Prop :=
  ∀ n, P1125741016393298795.a n = A037040 n

end A037040

/-! ## A037040.P18136569945370483202

`A067856(A164568(n+1))+A038377(n)`
-/

namespace A037040.P18136569945370483202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A164568 (n + 1)).toNat + A038377 n

end

end A037040.P18136569945370483202

namespace A037040

/-- `A067856(A164568(n+1))+A038377(n)` -/
def P18136569945370483202.Spec : Prop :=
  ∀ n, P18136569945370483202.a n = A037040 n

end A037040

/-! ## A037040.P10588065591078231342

`A067856(A164566(n+1))+A038377(n)`
-/

namespace A037040.P10588065591078231342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A164566 (n + 1)).toNat + A038377 n

end

end A037040.P10588065591078231342

namespace A037040

/-- `A067856(A164566(n+1))+A038377(n)` -/
def P10588065591078231342.Spec : Prop :=
  ∀ n, P10588065591078231342.a n = A037040 n

end A037040

/-! ## A037040.P12431147311107248363

`A067856(A243530(n+1))+A038377(n)`
-/

namespace A037040.P12431147311107248363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A243530 (n + 1)).toNat + A038377 n

end

end A037040.P12431147311107248363

namespace A037040

/-- `A067856(A243530(n+1))+A038377(n)` -/
def P12431147311107248363.Spec : Prop :=
  ∀ n, P12431147311107248363.a n = A037040 n

end A037040

/-!
# A037041: Number of quadratic residues mod n for some n (A000224 sorted and duplicates removed).

The programs for A037041, there is no canonical definition to state claims against.
-/

/-! ## A037041.P2009416425567796077

`1+comp[A037046(n+1)-1]`
-/

namespace A037041.P2009416425567796077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037046 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A037041.P2009416425567796077

/-! ## A037041.P7538702179304982090

`eq[char[A037046(n+1)], A000007(n)]`
-/

namespace A037041.P7538702179304982090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A037041.P7538702179304982090

/-! ## A037041.P4600990999460711322

`eq[char[A037046(n+1)], A000038(n)]`
-/

namespace A037041.P4600990999460711322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A037041.P4600990999460711322

/-! ## A037041.P15891215278288655142

`lt[0, A111986(n+1)]+1`
-/

namespace A037041.P15891215278288655142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A037041.P15891215278288655142

/-! ## A037041.P16000265439887542739

`lt[A000007(n), A111986(A028310(n))]`
-/

namespace A037041.P16000265439887542739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037041.P16000265439887542739

/-! ## A037041.P2718604192877573579

`lt[A000038(n), A111986(A028310(n))]`
-/

namespace A037041.P2718604192877573579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037041.P2718604192877573579

/-! ## A037041.P539278094049667181

`record[(n+1)%A000124(A111987(n+1))]`
-/

namespace A037041.P539278094049667181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000124 (A111987 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037041.P539278094049667181

/-!
# A037045: 5-white numbers: partition digits of n^5 into blocks of 5 starting at right; sum of these 5-digit numbers equals n.

The programs for A037045, there is no canonical definition to state claims against.
-/

/-! ## A037045.P9674191716510461099

`A171500(n+3)%A222116(A206351(n+1))`
-/

namespace A037045.P9674191716510461099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171500 (n + 3)) (A222116 (A206351 (n + 1)).toNat)

end

end A037045.P9674191716510461099

/-!
# A037046: Numbers that are not the number of quadratic residues mod n for any n.

The programs for A037046, there is no canonical definition to state claims against.
-/

/-! ## A037046.P1256600628131897380

`A292795(C(n, 2))+comp[A105612(n+1)]`
-/

namespace A037046.P1256600628131897380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (Nat.choose n 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A037046.P1256600628131897380

/-! ## A037046.P12223449563006473853

`A292795(∑[n])+comp[A105612(n+1)]`
-/

namespace A037046.P12223449563006473853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A037046.P12223449563006473853

/-! ## A037046.P16624036084696236970

`(comp[A105612(n+1)]+1)%A343116(n+1)`
-/

namespace A037046.P16624036084696236970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A343116 (n + 1))

end

end A037046.P16624036084696236970

/-! ## A037046.P7948860567308575470

`A011655(A117401(n))+comp[A105612(n+1)]`
-/

namespace A037046.P7948860567308575470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A117401 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A037046.P7948860567308575470

/-! ## A037046.P13952627202097313601

`eq[0, A111986(n+1)]+1`
-/

namespace A037046.P13952627202097313601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037046.P13952627202097313601

/-!
# A037047: Starting at n, "say what you see"; sequence gives number of primes obtained before first composite number appears.

The programs for A037047, there is no canonical definition to state claims against.
-/

/-! ## A037047.P4834857404323856896

`C(A115622(n+5), dr(A115640(n+1)))`
-/

namespace A037047.P4834857404323856896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115622 (n + 5)).toNat (SequenceMachineLib.digitalRoot (A115640 (n + 1)))

end

end A037047.P4834857404323856896

/-! ## A037047.P15947339129981381596

`val(A266697(A106458(n)), A232928(n+3))`
-/

namespace A037047.P15947339129981381596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266697 (A106458 n).toNat).toNat (A232928 (n + 3)).toNat

end

end A037047.P15947339129981381596

/-! ## A037047.P13248455814794295949

`A348687(and(A055248(n), A074473(n+1)))`
-/

namespace A037047.P13248455814794295949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 (Int.land (A055248 n) (A074473 (n + 1))).toNat

end

end A037047.P13248455814794295949

/-! ## A037047.P7945482418890456167

`A232567(A305947(n))%A266697(A106458(n))`
-/

namespace A037047.P7945482418890456167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232567 (A305947 n).toNat) (A266697 (A106458 n).toNat)

end

end A037047.P7945482418890456167

/-! ## A037047.P1840261250895764644

`A279291(A078392(n+1))`
-/

namespace A037047.P1840261250895764644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279291 (A078392 (n + 1)).toNat

end

end A037047.P1840261250895764644

/-!
# A037048: Number of pairs {i,j}, i>1, j>1, such that ij < n^2.

The programs for A037048, there is no canonical definition to state claims against.
-/

/-! ## A037048.P13815014057146630704

`(∑[A168010(n+1)]-((n+2)²-1))/2-∑[n+1]`
-/

namespace A037048.P13815014057146630704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (((n + 2) ^ 2 : ℤ) - 1) : ℤ) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A037048.P13815014057146630704

/-! ## A037048.P4748850032917307066

`A183003((n+2)²-1)`
-/

namespace A037048.P4748850032917307066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 ((n + 2) ^ 2 - 1)

end

end A037048.P4748850032917307066

/-! ## A037048.P1117839100045069730

`A183002((n+1)*(n+3))/2`
-/

namespace A037048.P1117839100045069730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183002 ((n + 1) * (n + 3)) : ℚ) / 2

end

end A037048.P1117839100045069730

/-! ## A037048.P2933554658047075719

`A094820((n+2)²-1)-((n+2)²-1)`
-/

namespace A037048.P2933554658047075719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 ((n + 2) ^ 2 - 1) - (((n + 2) ^ 2 : ℤ) - 1)

end

end A037048.P2933554658047075719

/-! ## A037048.P14215855036699765050

`A183003(A024206(2*n+3))%A247792(n)`
-/

namespace A037048.P14215855036699765050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183003 (A024206 (2 * n + 3)).toNat) (A247792 n)

end

end A037048.P14215855036699765050

/-!
# A037049: Smallest number with two distinct prime factors both of length n.

The programs for A037049, there is no canonical definition to state claims against.
-/

/-! ## A037049.P14584707867297039663

`A003617(n+1)*A139052(2*(n+1))`
-/

namespace A037049.P14584707867297039663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) * A139052 (2 * (n + 1))

end

end A037049.P14584707867297039663

/-! ## A037049.P11825557626186809988

`A139052(2*(n+1))*A139052(2*n+1)`
-/

namespace A037049.P11825557626186809988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * (n + 1)) * A139052 (2 * n + 1)

end

end A037049.P11825557626186809988

/-! ## A037049.P11939770514291158344

`A139053(3*n+1)*A139053(3*n+2)`
-/

namespace A037049.P11939770514291158344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (3 * n + 1) * A139053 (3 * n + 2)

end

end A037049.P11939770514291158344

/-! ## A037049.P887254428222421545

`A003617(n+1)*A139053(A016789(n))`
-/

namespace A037049.P887254428222421545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) * A139053 (A016789 n).toNat

end

end A037049.P887254428222421545

/-!
# A037052: a(n)-th prime is the smallest prime containing exactly n 0's.

The programs for A037052, there is no canonical definition to state claims against.
-/

/-! ## A037052.P1684487511306119594

`A090226(∑[A247342(n)!])`
-/

namespace A037052.P1684487511306119594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A247342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037052.P1684487511306119594

/-! ## A037052.P1218332019083975878

`A090226(∑[A327858(n)!])`
-/

namespace A037052.P1218332019083975878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037052.P1218332019083975878

/-!
# A037053: Smallest prime containing exactly n 0's.

The programs for A037053, there is no canonical definition to state claims against.
-/

/-! ## A037053.P11089977002694711150

`A000040(A037052(n))`
-/

namespace A037053.P11089977002694711150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037052 n).toNat

end

end A037053.P11089977002694711150

/-! ## A037053.P76037168532542528

`A375760(10*n)`
-/

namespace A037053.P76037168532542528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (10 * n)

end

end A037053.P76037168532542528

/-!
# A037054: a(n)-th prime is the smallest prime containing exactly n 1's.

The programs for A037054, there is no canonical definition to state claims against.
-/

/-! ## A037054.P10226495081089659093

`A000720(A037055(n))`
-/

namespace A037054.P10226495081089659093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037055 n).toNat

end

end A037054.P10226495081089659093

/-!
# A037055: Smallest prime containing exactly n 1's.

The programs for A037055, there is no canonical definition to state claims against.
-/

/-! ## A037055.P5018173751913170341

`A000040(A037054(n))`
-/

namespace A037055.P5018173751913170341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037054 n).toNat

end

end A037055.P5018173751913170341

/-! ## A037055.P4619858782146237846

`A375760(A017281(n))`
-/

namespace A037055.P4619858782146237846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017281 n).toNat

end

end A037055.P4619858782146237846

/-! ## A037055.P708123540483691667

`A375760(A017293(n)-1)`
-/

namespace A037055.P708123540483691667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017293 n - 1).toNat

end

end A037055.P708123540483691667

/-! ## A037055.P4541104541094069630

`A375760(A017305(n)-2)`
-/

namespace A037055.P4541104541094069630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017305 n - 2).toNat

end

end A037055.P4541104541094069630

/-! ## A037055.P3597850428582967400

`A375760(A017293(2*n)/2)`
-/

namespace A037055.P3597850428582967400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017293 (2 * n) : ℚ) / 2)).toNat

end

end A037055.P3597850428582967400

/-! ## A037055.P4345988966734630450

`A375760(A016777(3*n)+n)`
-/

namespace A037055.P4345988966734630450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A016777 (3 * n) + (n : ℤ)).toNat

end

end A037055.P4345988966734630450

/-!
# A037056: a(n)-th prime is the smallest prime containing exactly n 2's.

The programs for A037056, there is no canonical definition to state claims against.
-/

/-! ## A037056.P12624243258828045665

`A000720(A037057(n))`
-/

namespace A037056.P12624243258828045665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037057 n).toNat

end

end A037056.P12624243258828045665

/-!
# A037057: Smallest prime containing exactly n 2's.

The programs for A037057, there is no canonical definition to state claims against.
-/

/-! ## A037057.P12745379747697425800

`A000040(A037056(n))`
-/

namespace A037057.P12745379747697425800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037056 n).toNat

end

end A037057.P12745379747697425800

/-! ## A037057.P6415680129495085930

`A375760(A017293(n))`
-/

namespace A037057.P6415680129495085930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017293 n).toNat

end

end A037057.P6415680129495085930

/-! ## A037057.P11205539156476320747

`A375760(A017281(n)+1)`
-/

namespace A037057.P11205539156476320747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017281 n + 1).toNat

end

end A037057.P11205539156476320747

/-! ## A037057.P9417188757273313718

`A375760(A017305(n)-1)`
-/

namespace A037057.P9417188757273313718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017305 n - 1).toNat

end

end A037057.P9417188757273313718

/-! ## A037057.P9403824851147090653

`A375760(A017317(n)-2)`
-/

namespace A037057.P9403824851147090653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017317 n - 2).toNat

end

end A037057.P9403824851147090653

/-! ## A037057.P1436151579586283833

`A375760(A017317(2*n)/2)`
-/

namespace A037057.P1436151579586283833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017317 (2 * n) : ℚ) / 2)).toNat

end

end A037057.P1436151579586283833

/-!
# A037058: a(n)-th prime is the smallest prime containing exactly n 3's.

The programs for A037058, there is no canonical definition to state claims against.
-/

/-! ## A037058.P7726041332789664869

`A000720(A037059(n))`
-/

namespace A037058.P7726041332789664869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037059 n).toNat

end

end A037058.P7726041332789664869

/-!
# A037059: Smallest prime containing exactly n 3's.

The programs for A037059, there is no canonical definition to state claims against.
-/

/-! ## A037059.P3802894131029531161

`A000040(A037058(n))`
-/

namespace A037059.P3802894131029531161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037058 n).toNat

end

end A037059.P3802894131029531161

/-! ## A037059.P4130569133308217559

`A268703(n+1)+A037067(n)-A268705(n+1)`
-/

namespace A037059.P4130569133308217559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268703 (n + 1) + (A037067 n - A268705 (n + 1))

end

end A037059.P4130569133308217559

/-! ## A037059.P14886387463487969524

`A268703(n+1)%A037063(A028310(n))`
-/

namespace A037059.P14886387463487969524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268703 (n + 1)) (A037063 (A028310 n).toNat)

end

end A037059.P14886387463487969524

/-! ## A037059.P12952956226246720076

`A375760(A017305(n))`
-/

namespace A037059.P12952956226246720076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017305 n).toNat

end

end A037059.P12952956226246720076

/-! ## A037059.P11450304450022531754

`A375760(A017293(n)+1)`
-/

namespace A037059.P11450304450022531754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017293 n + 1).toNat

end

end A037059.P11450304450022531754

/-! ## A037059.P691745116820012161

`A375760(A017281(n)+2)`
-/

namespace A037059.P691745116820012161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017281 n + 2).toNat

end

end A037059.P691745116820012161

/-! ## A037059.P1890939235399565124

`A375760(A017317(n)-1)`
-/

namespace A037059.P1890939235399565124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017317 n - 1).toNat

end

end A037059.P1890939235399565124

/-! ## A037059.P1609509397418401891

`A375760(A017341(2*n)/2)`
-/

namespace A037059.P1609509397418401891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017341 (2 * n) : ℚ) / 2)).toNat

end

end A037059.P1609509397418401891

/-! ## A037059.P2592368468509385742

`A268703(n+1)+A268705(n+1)%(5*A037057(n))-A268705(n+1)`
-/

namespace A037059.P2592368468509385742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268703 (n + 1) + (Int.tmod (A268705 (n + 1)) (5 * A037057 n) - A268705 (n + 1))

end

end A037059.P2592368468509385742

/-!
# A037060: a(n)-th prime is the smallest prime containing exactly n 4's.

The programs for A037060, there is no canonical definition to state claims against.
-/

/-! ## A037060.P8812459150392019689

`A000720(A037061(n))`
-/

namespace A037060.P8812459150392019689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037061 n).toNat

end

end A037060.P8812459150392019689

/-!
# A037061: Smallest prime containing exactly n 4's.

The programs for A037061, there is no canonical definition to state claims against.
-/

/-! ## A037061.P1527295881047829093

`A000040(A037060(n))`
-/

namespace A037061.P1527295881047829093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037060 n).toNat

end

end A037061.P1527295881047829093

/-! ## A037061.P351012034276023301

`A375760(A017317(n))`
-/

namespace A037061.P351012034276023301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017317 n).toNat

end

end A037061.P351012034276023301

/-! ## A037061.P297140113219188974

`A375760(A017305(n)+1)`
-/

namespace A037061.P297140113219188974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017305 n + 1).toNat

end

end A037061.P297140113219188974

/-! ## A037061.P11165222414480893885

`A375760(A017293(n)+2)`
-/

namespace A037061.P11165222414480893885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017293 n + 2).toNat

end

end A037061.P11165222414480893885

/-! ## A037061.P3763659413979103263

`A375760(A017341(n)-2)`
-/

namespace A037061.P3763659413979103263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017341 n - 2).toNat

end

end A037061.P3763659413979103263

/-! ## A037061.P13128750632118900989

`A375760(A017365(2*n)/2)`
-/

namespace A037061.P13128750632118900989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017365 (2 * n) : ℚ) / 2)).toNat

end

end A037061.P13128750632118900989

/-!
# A037063: Smallest prime containing exactly n 5's.

The programs for A037063, there is no canonical definition to state claims against.
-/

/-! ## A037063.P7434524199171752768

`A375760(5*(2*n+1))`
-/

namespace A037063.P7434524199171752768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (5 * (2 * n + 1))

end

end A037063.P7434524199171752768

/-!
# A037064: a(n)-th prime is the smallest prime containing exactly n 6's.

The programs for A037064, there is no canonical definition to state claims against.
-/

/-! ## A037064.P60990546416157027

`A088781(A088797(n+1)-1)`
-/

namespace A037064.P60990546416157027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088781 (A088797 (n + 1) - 1).toNat

end

end A037064.P60990546416157027

/-!
# A037065: Smallest prime containing exactly n 6's.

The programs for A037065, there is no canonical definition to state claims against.
-/

/-! ## A037065.P18224960968500426527

`A375760(A017341(n))`
-/

namespace A037065.P18224960968500426527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017341 n).toNat

end

end A037065.P18224960968500426527

/-! ## A037065.P8180516499766039498

`A375760(A017317(n)+2)`
-/

namespace A037065.P8180516499766039498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017317 n + 2).toNat

end

end A037065.P8180516499766039498

/-! ## A037065.P9981567651069194544

`A375760(A017353(n)-1)`
-/

namespace A037065.P9981567651069194544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017353 n - 1).toNat

end

end A037065.P9981567651069194544

/-! ## A037065.P637671029448637983

`A375760(A017365(n)-2)`
-/

namespace A037065.P637671029448637983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017365 n - 2).toNat

end

end A037065.P637671029448637983

/-! ## A037065.P14534508605777120800

`A375760(A160912(n+2)-1)`
-/

namespace A037065.P14534508605777120800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A160912 (n + 2) - 1).toNat

end

end A037065.P14534508605777120800

/-! ## A037065.P7016148146872712063

`A375760(A017293(2*n+1)/2)`
-/

namespace A037065.P7016148146872712063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017293 (2 * n + 1) : ℚ) / 2)).toNat

end

end A037065.P7016148146872712063

/-!
# A037066: a(n)-th prime is the smallest prime containing exactly n 7's.

The programs for A037066, there is no canonical definition to state claims against.
-/

/-! ## A037066.P6935435875430108477

`A000720(A037067(n))`
-/

namespace A037066.P6935435875430108477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037067 n).toNat

end

end A037066.P6935435875430108477

/-!
# A037067: Smallest prime containing exactly n 7's.

The programs for A037067, there is no canonical definition to state claims against.
-/

/-! ## A037067.P6574615996928307183

`A000040(A037066(n))`
-/

namespace A037067.P6574615996928307183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037066 n).toNat

end

end A037067.P6574615996928307183

/-! ## A037067.P15216672903498303612

`A268705(n+1)+A037059(n)-A268703(n+1)`
-/

namespace A037067.P15216672903498303612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268705 (n + 1) + (A037059 n - A268703 (n + 1))

end

end A037067.P15216672903498303612

/-! ## A037067.P3497779984306590072

`A375760(A017353(n))`
-/

namespace A037067.P3497779984306590072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017353 n).toNat

end

end A037067.P3497779984306590072

/-! ## A037067.P9848483470285290393

`A375760(A017341(n)+1)`
-/

namespace A037067.P9848483470285290393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017341 n + 1).toNat

end

end A037067.P9848483470285290393

/-! ## A037067.P3738832524267535628

`A375760(A017365(n)-1)`
-/

namespace A037067.P3738832524267535628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017365 n - 1).toNat

end

end A037067.P3738832524267535628

/-! ## A037067.P5094986313828901891

`A375760(A160912(n+2))`
-/

namespace A037067.P5094986313828901891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A160912 (n + 2)).toNat

end

end A037067.P5094986313828901891

/-! ## A037067.P5029840524451591039

`A375760(A017377(n)-2)`
-/

namespace A037067.P5029840524451591039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017377 n - 2).toNat

end

end A037067.P5029840524451591039

/-! ## A037067.P10094262910298071646

`A375760(A017317(2*n+1)/2)`
-/

namespace A037067.P10094262910298071646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (SequenceMachineLib.roundAway ((A017317 (2 * n + 1) : ℚ) / 2)).toNat

end

end A037067.P10094262910298071646

/-! ## A037067.P9702123119912992784

`A268705(n+1)%(5*A037057(n))`
-/

namespace A037067.P9702123119912992784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268705 (n + 1)) (5 * A037057 n)

end

end A037067.P9702123119912992784

/-!
# A037068: a(n)-th prime is the smallest prime containing exactly n 8's.

The programs for A037068, there is no canonical definition to state claims against.
-/

/-! ## A037068.P2786803536485191941

`A000720(A037069(n))`
-/

namespace A037068.P2786803536485191941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037069 n).toNat

end

end A037068.P2786803536485191941

/-!
# A037069: Smallest prime containing exactly n 8's.

The programs for A037069, there is no canonical definition to state claims against.
-/

/-! ## A037069.P18219039836304153053

`A000040(A037068(n))`
-/

namespace A037069.P18219039836304153053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037068 n).toNat

end

end A037069.P18219039836304153053

/-! ## A037069.P11878933261133729535

`A375760(A017365(n))`
-/

namespace A037069.P11878933261133729535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017365 n).toNat

end

end A037069.P11878933261133729535

/-! ## A037069.P6107331883865844880

`A375760(A017353(n)+1)`
-/

namespace A037069.P6107331883865844880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017353 n + 1).toNat

end

end A037069.P6107331883865844880

/-! ## A037069.P17412049330469442804

`A375760(A017341(n)+2)`
-/

namespace A037069.P17412049330469442804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017341 n + 2).toNat

end

end A037069.P17412049330469442804

/-! ## A037069.P6482872946656946265

`A375760(A017377(n)-1)`
-/

namespace A037069.P6482872946656946265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017377 n - 1).toNat

end

end A037069.P6482872946656946265

/-! ## A037069.P9501379694600118521

`A375760(A160912(n+2)+1)`
-/

namespace A037069.P9501379694600118521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A160912 (n + 2) + 1).toNat

end

end A037069.P9501379694600118521

/-!
# A037070: a(n)-th prime is the smallest prime containing exactly n 9's.

The programs for A037070, there is no canonical definition to state claims against.
-/

/-! ## A037070.P4592231770217388540

`A000720(A037071(n))`
-/

namespace A037070.P4592231770217388540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037071 n).toNat

end

end A037070.P4592231770217388540

/-!
# A037071: Smallest prime containing exactly n 9's.

The programs for A037071, there is no canonical definition to state claims against.
-/

/-! ## A037071.P10448714101164125077

`A000040(A037070(n))`
-/

namespace A037071.P10448714101164125077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037070 n).toNat

end

end A037071.P10448714101164125077

/-! ## A037071.P1225559621376651698

`A375760(A017377(n))`
-/

namespace A037071.P1225559621376651698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017377 n).toNat

end

end A037071.P1225559621376651698

/-! ## A037071.P3026451729442922783

`A375760(A017365(n)+1)`
-/

namespace A037071.P3026451729442922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017365 n + 1).toNat

end

end A037071.P3026451729442922783

/-! ## A037071.P6396233695518846277

`A375760(A017353(n)+2)`
-/

namespace A037071.P6396233695518846277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017353 n + 2).toNat

end

end A037071.P6396233695518846277

/-! ## A037071.P3349174142739999233

`A375760(A017281(n+1)-2)`
-/

namespace A037071.P3349174142739999233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A017281 (n + 1) - 2).toNat

end

end A037071.P3349174142739999233

/-! ## A037071.P15366541600238678030

`A375760(A160912(n+2)+2)`
-/

namespace A037071.P15366541600238678030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A160912 (n + 2) + 2).toNat

end

end A037071.P15366541600238678030

/-!
# A037072: Squares which are the sum of twin prime pairs.

The programs for A037072, there is no canonical definition to state claims against.
-/

/-! ## A037072.P14363834877144408432

`A152786(n+1)²`
-/

namespace A037072.P14363834877144408432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1) ^ 2

end

end A037072.P14363834877144408432

/-! ## A037072.P10436018992854575400

`2*A154670(n+1)`
-/

namespace A037072.P10436018992854575400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154670 (n + 1)

end

end A037072.P10436018992854575400

/-! ## A037072.P16374995511887640667

`(2*A173165(n+1))²`
-/

namespace A037072.P16374995511887640667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A173165 (n + 1)) ^ 2

end

end A037072.P16374995511887640667

/-! ## A037072.P1688277592027070971

`(6*A037073(n+1))²`
-/

namespace A037072.P1688277592027070971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A037073 (n + 1)) ^ 2

end

end A037072.P1688277592027070971

/-! ## A037072.P10649690705212630404

`2*(A069496(n+1)+1)`
-/

namespace A037072.P10649690705212630404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069496 (n + 1) + 1)

end

end A037072.P10649690705212630404

/-! ## A037072.P13269474543796951753

`2*(A118593(n+1)-1)`
-/

namespace A037072.P13269474543796951753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A118593 (n + 1) - 1)

end

end A037072.P13269474543796951753

/-! ## A037072.P4526105560381776686

`A118593(n+1)+A069496(n+1)`
-/

namespace A037072.P4526105560381776686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118593 (n + 1) + A069496 (n + 1)

end

end A037072.P4526105560381776686

/-! ## A037072.P18296149154574098170

`(A154670(n+1)/A173165(n+1))²`
-/

namespace A037072.P18296149154574098170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A154670 (n + 1) : ℚ) / (A173165 (n + 1) : ℚ)) ^ 2

end

end A037072.P18296149154574098170

/-! ## A037072.P17783373215475753714

`2*A152786(n+1)*A173165(n+1)`
-/

namespace A037072.P17783373215475753714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152786 (n + 1) * A173165 (n + 1))

end

end A037072.P17783373215475753714

/-! ## A037072.P3323204657618715759

`2*(A232878(2*n+1)+1)`
-/

namespace A037072.P3323204657618715759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A232878 (2 * n + 1) + 1)

end

end A037072.P3323204657618715759

/-! ## A037072.P8087874452424734127

`∩[A062703(n+1), A119767(n+1)]`
-/

namespace A037072.P8087874452424734127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037072.P8087874452424734127

/-! ## A037072.P32245232942857210

`ceil(2*sqrt(A235334(n+2)))`
-/

namespace A037072.P32245232942857210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A235334 (n + 2) : ℝ)⌉

end

end A037072.P32245232942857210

/-! ## A037072.P11589872088624552969

`A069496(n+1)+A235334(n+2)/A069496(n+1)`
-/

namespace A037072.P11589872088624552969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069496 (n + 1) : ℚ) + (A235334 (n + 2) : ℚ) / (A069496 (n + 1) : ℚ)

end

end A037072.P11589872088624552969

/-! ## A037072.P18420357385135298859

`∩[A074924(n+1), A090697(n+1)]²`
-/

namespace A037072.P18420357385135298859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A037072.P18420357385135298859

/-! ## A037072.P12866199845855637212

`(2*∩[A066049(n+1), A089001(n+1)])²`
-/

namespace A037072.P12866199845855637212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) ^ 2

end

end A037072.P12866199845855637212

/-! ## A037072.P673443011676319497

`∩[A062703(n+1), A278022(n+1)]`
-/

namespace A037072.P673443011676319497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037072.P673443011676319497

/-! ## A037072.P7941693170042249165

`∩[A119767(n+1), A278022(n+1)]`
-/

namespace A037072.P7941693170042249165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037072.P7941693170042249165

/-! ## A037072.P5030930434883793065

`∩[A245360(n+1), A278022(n+1)]`
-/

namespace A037072.P5030930434883793065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037072.P5030930434883793065

/-! ## A037072.P12595302073114358454

`4*A272890(n+1)`
-/

namespace A037072.P12595302073114358454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A272890 (n + 1)

end

end A037072.P12595302073114358454

/-! ## A037072.P10836508055840913633

`A016910(A037073(n+1))`
-/

namespace A037072.P10836508055840913633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A037073 (n + 1)).toNat

end

end A037072.P10836508055840913633

/-!
# A037073: Numbers k such that (6*k)^2 is the sum of a twin prime pair.

The programs for A037073, there is no canonical definition to state claims against.
-/

/-! ## A037073.P1415216452552165338

`A173165(n+1)/3`
-/

namespace A037073.P1415216452552165338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) : ℚ) / 3

end

end A037073.P1415216452552165338

/-! ## A037073.P14543056743449804484

`A152786(n+1)/6`
-/

namespace A037073.P14543056743449804484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (n + 1) : ℚ) / 6

end

end A037073.P14543056743449804484

/-! ## A037073.P12101064353516531373

`sqrt(A037072(n+1))/6`
-/

namespace A037073.P12101064353516531373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A037072 (n + 1) : ℝ) / 6

end

end A037073.P12101064353516531373

/-! ## A037073.P5116736233423790652

`sqrt(2*(A069496(n+1)+1))/6`
-/

namespace A037073.P5116736233423790652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A069496 (n + 1) + 1) : ℝ) / 6

end

end A037073.P5116736233423790652

/-! ## A037073.P9632051048707240529

`sqrt(A272890(n+1))/3`
-/

namespace A037073.P9632051048707240529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272890 (n + 1) : ℝ) / 3

end

end A037073.P9632051048707240529

/-! ## A037073.P12994244749870869586

`record[A152786(A038568(n))/2]/3`
-/

namespace A037073.P12994244749870869586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (A038568 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 3

end

end A037073.P12994244749870869586

/-! ## A037073.P12960968377851629981

`A002264(A173165(n+1))`
-/

namespace A037073.P12960968377851629981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A173165 (n + 1)).toNat

end

end A037073.P12960968377851629981

/-! ## A037073.P2442710110411401723

`A008615(A152786(n+1))`
-/

namespace A037073.P2442710110411401723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A152786 (n + 1)).toNat

end

end A037073.P2442710110411401723

/-!
# A037074: Numbers that are the product of a pair of twin primes.

The programs for A037074, the canonical program `A037074.P14204517585574046059` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037074 has offset 1).

The definition of A037074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037074.P15138506944741029710

`A075369(n+1)-1`
-/

namespace A037074.P15138506944741029710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 1

end

end A037074.P15138506944741029710

namespace A037074

/-- `A075369(n+1)-1` -/
def P15138506944741029710.Spec : Prop :=
  ∀ n, P15138506944741029710.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P14204517585574046059

`A014574(n+1)²-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A037074

/-- `A014574(n+1)²-1` -/
def P14204517585574046059.Spec : Prop :=
  ∀ n, P14204517585574046059.a n = A037074 (n + 1)

theorem P14204517585574046059.correct : P14204517585574046059.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel]

end A037074

/-! ## A037074.P15272239562477849743

`A001359(n+1)*A006512(n+1)`
-/

namespace A037074.P15272239562477849743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A006512 (n + 1)

end

end A037074.P15272239562477849743

namespace A037074

/-- `A001359(n+1)*A006512(n+1)` -/
def P15272239562477849743.Spec : Prop :=
  ∀ n, P15272239562477849743.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P13321158139130285857

`A120875(n+1)+1`
-/

namespace A037074.P13321158139130285857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + 1

end

end A037074.P13321158139130285857

namespace A037074

/-- `A120875(n+1)+1` -/
def P13321158139130285857.Spec : Prop :=
  ∀ n, P13321158139130285857.a n = A037074 (n + 1)

theorem P13321158139130285857.correct : P13321158139130285857.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P13321158139130285857.a, A037074.P14204517585574046059.a, A014574, A014574.P4587706211531852143.a, A120875, A120875.P6924631559376339399.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P14791811768069798666

`A071142(n+1)/2`
-/

namespace A037074.P14791811768069798666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / 2

end

end A037074.P14791811768069798666

namespace A037074

/-- `A071142(n+1)/2` -/
def P14791811768069798666.Spec : Prop :=
  ∀ n, P14791811768069798666.a n = (A037074 (n + 1) : ℚ)

theorem P14791811768069798666.correct : P14791811768069798666.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P14791811768069798666.a, A037074.P14204517585574046059.a, A014574, A014574.P4587706211531852143.a, A071142, A071142.P14877615513992984752.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P4621077968252025539

`2*A120876(n+1)+1`
-/

namespace A037074.P4621077968252025539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120876 (n + 1) + 1

end

end A037074.P4621077968252025539

namespace A037074

/-- `2*A120876(n+1)+1` -/
def P4621077968252025539.Spec : Prop :=
  ∀ n, P4621077968252025539.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P12492902380004484325

`A063533(n+1)/2-2`
-/

namespace A037074.P12492902380004484325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063533 (n + 1) : ℚ) / 2 - 2

end

end A037074.P12492902380004484325

namespace A037074

/-- `A063533(n+1)/2-2` -/
def P12492902380004484325.Spec : Prop :=
  ∀ n, P12492902380004484325.a n = (A037074 (n + 1) : ℚ)

theorem P12492902380004484325.correct : P12492902380004484325.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P12492902380004484325.a, A037074.P14204517585574046059.a, A014574, A014574.P4587706211531852143.a, A063533, A063533.P4439980953914597874.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P17846183775204461606

`(A184417(n+1)-3)/2`
-/

namespace A037074.P17846183775204461606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184417 (n + 1) - 3 : ℚ) / 2

end

end A037074.P17846183775204461606

namespace A037074

/-- `(A184417(n+1)-3)/2` -/
def P17846183775204461606.Spec : Prop :=
  ∀ n, P17846183775204461606.a n = (A037074 (n + 1) : ℚ)

theorem P17846183775204461606.correct : P17846183775204461606.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P17846183775204461606.a, A037074.P14204517585574046059.a, A014574, A014574.P4587706211531852143.a, A184417, A184417.P16121788187254490956.a, A063533, A063533.P4439980953914597874.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P13554847229663265012

`floor(sqrt(A094949(n+1)))+2`
-/

namespace A037074.P13554847229663265012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A094949 (n + 1)) + 2

end

end A037074.P13554847229663265012

namespace A037074

/-- `floor(sqrt(A094949(n+1)))+2` -/
def P13554847229663265012.Spec : Prop :=
  ∀ n, P13554847229663265012.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P1454139971364033101

`(A144834(n+1)+2)²-1`
-/

namespace A037074.P1454139971364033101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2) ^ 2 - 1

end

end A037074.P1454139971364033101

namespace A037074

/-- `(A144834(n+1)+2)²-1` -/
def P1454139971364033101.Spec : Prop :=
  ∀ n, P1454139971364033101.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P11890389366764990051

`(2*A040040(n+1))²-1`
-/

namespace A037074.P11890389366764990051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A040040 (n + 1)) ^ 2 - 1

end

end A037074.P11890389366764990051

namespace A037074

/-- `(2*A040040(n+1))²-1` -/
def P11890389366764990051.Spec : Prop :=
  ∀ n, P11890389366764990051.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P630141265600667341

`(A054735(n+1)/2)²-1`
-/

namespace A037074.P630141265600667341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054735 (n + 1) : ℚ) / 2) ^ 2 - 1

end

end A037074.P630141265600667341

namespace A037074

/-- `(A054735(n+1)/2)²-1` -/
def P630141265600667341.Spec : Prop :=
  ∀ n, P630141265600667341.a n = (A037074 (n + 1) : ℚ)

theorem P630141265600667341.correct : P630141265600667341.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P630141265600667341.a, A037074.P14204517585574046059.a, A014574, A014574.P4587706211531852143.a, A054735, A054735.P17392456198016609014.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P5100695293332789012

`floor(sqrt(A135286(n+1)))²-1`
-/

namespace A037074.P5100695293332789012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135286 (n + 1)) ^ 2 - 1

end

end A037074.P5100695293332789012

namespace A037074

/-- `floor(sqrt(A135286(n+1)))²-1` -/
def P5100695293332789012.Spec : Prop :=
  ∀ n, P5100695293332789012.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P2482808332151474049

`A126251(n+1)-A006512(n+1)`
-/

namespace A037074.P2482808332151474049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - A006512 (n + 1)

end

end A037074.P2482808332151474049

namespace A037074

/-- `A126251(n+1)-A006512(n+1)` -/
def P2482808332151474049.Spec : Prop :=
  ∀ n, P2482808332151474049.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P16111875526239115970

`A135285(n+1)+A001359(n+2)`
-/

namespace A037074.P16111875526239115970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135285 (n + 1) + A001359 (n + 2)

end

end A037074.P16111875526239115970

namespace A037074

/-- `A135285(n+1)+A001359(n+2)` -/
def P16111875526239115970.Spec : Prop :=
  ∀ n, P16111875526239115970.a n = A037074 (n + 1)

theorem P16111875526239115970.correct : P16111875526239115970.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P16111875526239115970.a, A037074.P14204517585574046059.a, A001359, A001359.P8865495035699438537.a, A014574, A014574.P4587706211531852143.a, A135285, A135285.P2730746227463814090.a, A077800, A077800.P16009445446139691322.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A096281, A096281.P9870488552655544131.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A008619, A008619.P16053834178911111118.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P10506753731657155244

`A108604(n+1)-A176810(n+1)`
-/

namespace A037074.P10506753731657155244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A176810 (n + 1)

end

end A037074.P10506753731657155244

namespace A037074

/-- `A108604(n+1)-A176810(n+1)` -/
def P10506753731657155244.Spec : Prop :=
  ∀ n, P10506753731657155244.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P2847962875353018875

`A135286(n+1)-A001359(n+2)`
-/

namespace A037074.P2847962875353018875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - A001359 (n + 2)

end

end A037074.P2847962875353018875

namespace A037074

/-- `A135286(n+1)-A001359(n+2)` -/
def P2847962875353018875.Spec : Prop :=
  ∀ n, P2847962875353018875.a n = A037074 (n + 1)

theorem P2847962875353018875.correct : P2847962875353018875.Spec := by
  intro n
  simp only [A037074, Nat.add_sub_cancel, A037074.P2847962875353018875.a, A037074.P14204517585574046059.a, A001359, A001359.P8865495035699438537.a, A014574, A014574.P4587706211531852143.a, A135286, A135286.P6895682011203157871.a, A077800, A077800.P16009445446139691322.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A096281, A096281.P9870488552655544131.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A008619, A008619.P16053834178911111118.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037074

/-! ## A037074.P14797092250347054028

`A126248(n+1)/A014574(n+1)`
-/

namespace A037074.P14797092250347054028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A014574 (n + 1) : ℚ)

end

end A037074.P14797092250347054028

namespace A037074

/-- `A126248(n+1)/A014574(n+1)` -/
def P14797092250347054028.Spec : Prop :=
  ∀ n, P14797092250347054028.a n = (A037074 (n + 1) : ℚ)

end A037074

/-! ## A037074.P3681629881108015905

`A097973(n+1)%A075369(n+1)`
-/

namespace A037074.P3681629881108015905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097973 (n + 1)) (A075369 (n + 1))

end

end A037074.P3681629881108015905

namespace A037074

/-- `A097973(n+1)%A075369(n+1)` -/
def P3681629881108015905.Spec : Prop :=
  ∀ n, P3681629881108015905.a n = A037074 (n + 1)

end A037074

/-! ## A037074.P11703377418186547149

`A001359(n+1)+A001359(n+1)*A014574(n+1)`
-/

namespace A037074.P11703377418186547149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A001359 (n + 1) * A014574 (n + 1)

end

end A037074.P11703377418186547149

namespace A037074

/-- `A001359(n+1)+A001359(n+1)*A014574(n+1)` -/
def P11703377418186547149.Spec : Prop :=
  ∀ n, P11703377418186547149.a n = A037074 (n + 1)

end A037074

/-!
# A037075: Number of eutactic lattices in dimension n.

The programs for A037075, there is no canonical definition to state claims against.
-/

/-! ## A037075.P16768608971101204008

`∑[round(exp(((n+1)/3)^3))]`
-/

namespace A037075.P16768608971101204008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (((n + 1 : ℚ) / 3) ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037075.P16768608971101204008

/-!
# A037076: Palindromes which are the sum of a twin prime pair.

The programs for A037076, there is no canonical definition to state claims against.
-/

/-! ## A037076.P10823292071819041594

`∩[A002113(n+1), A054735(n+1)]`
-/

namespace A037076.P10823292071819041594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037076.P10823292071819041594

/-! ## A037076.P6699478156789606443

`2*(p?[A151800(A242386(n+1))-2]+1)`
-/

namespace A037076.P6699478156789606443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A242386 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A037076.P6699478156789606443

/-!
# A037078: In ternary expansion of n, reading from right to left, digits occur in order ...,0,1,2,0,1,2,...

The programs for A037078, the canonical program `A037078.P3480676586563159969` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037078 has offset 0).

The definition of A037078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037078.P3480676586563159969

`3*a(n-2)+a(n-3)-3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037078

/-- `3*a(n-2)+a(n-3)-3*a(n-5)` -/
def P3480676586563159969.Spec : Prop :=
  ∀ n, P3480676586563159969.a n = A037078 n

theorem P3480676586563159969.correct : P3480676586563159969.Spec := by
  intro n
  simp only [A037078]

end A037078

/-! ## A037078.P10845069034132439259

`n%3+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A037078.P10845069034132439259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n % 3 + 3 * a (n - 2)

end

end A037078.P10845069034132439259

namespace A037078

/-- `n%3+3*a(n-2)` -/
def P10845069034132439259.Spec : Prop :=
  ∀ n, (P10845069034132439259.a n : ℤ) = A037078 n

end A037078

/-! ## A037078.P9279070881155370813

`3*a(n-2)--n%3` with `a(0)=0, a(1)=1`
-/

namespace A037078.P9279070881155370813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) - Int.tmod (-(n : ℤ)) 3

end

end A037078.P9279070881155370813

namespace A037078

/-- `3*a(n-2)--n%3` -/
def P9279070881155370813.Spec : Prop :=
  ∀ n, P9279070881155370813.a n = A037078 n

end A037078

/-! ## A037078.P316537706419832746

`3*a(n-2)+A010882(n)-1` with `a(0)=0, a(1)=1`
-/

namespace A037078.P316537706419832746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) + (A010882 n - 1)

end

end A037078.P316537706419832746

namespace A037078

/-- `3*a(n-2)+A010882(n)-1` -/
def P316537706419832746.Spec : Prop :=
  ∀ n, P316537706419832746.a n = A037078 n

end A037078

/-! ## A037078.P11471809619860536286

`∑[3*a(n-2)]-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037078.P11471809619860536286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A037078.P11471809619860536286

namespace A037078

/-- `∑[3*a(n-2)]-(a(n-1)+a(n-2))` -/
def P11471809619860536286.Spec : Prop :=
  ∀ n, P11471809619860536286.a n = A037078 n

end A037078

/-! ## A037078.P3130183685869319981

`∑[3*a(n-2)]-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037078.P3130183685869319981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A037078.P3130183685869319981

namespace A037078

/-- `∑[3*a(n-2)]-a(n-1)-a(n-2)` -/
def P3130183685869319981.Spec : Prop :=
  ∀ n, P3130183685869319981.a n = A037078 n

end A037078

/-!
# A037079: In ternary expansion of n, reading from left to right, digits occur in order ...,0,1,2,0,1,2,...

The programs for A037079, the canonical program `A037079.P15258508037725472484` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037079 has offset 0).

The definition of A037079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037079.P15258508037725472484

`(a(n-2)+1)%3+3*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037079

/-- `(a(n-2)+1)%3+3*a(n-2)` -/
def P15258508037725472484.Spec : Prop :=
  ∀ n, (P15258508037725472484.a n : ℤ) = A037079 n

theorem P15258508037725472484.correct : P15258508037725472484.Spec := by
  intro n
  simp only [A037079]

end A037079

/-! ## A037079.P15524359336881145970

`∪[A010872(n+1)+3*a(n-1), A037504(n+1)]` with `a(0)=0`
-/

namespace A037079.P15524359336881145970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010872 (n + 1) + 3 * f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A037079.P15524359336881145970

namespace A037079

/-- `∪[A010872(n+1)+3*a(n-1), A037504(n+1)]` -/
def P15524359336881145970.Spec : Prop :=
  ∀ n, (P15524359336881145970.a n : ℤ) = A037079 n

end A037079

/-! ## A037079.P14375532246583529804

`∩[A037081(n), A043089(n)]`
-/

namespace A037079.P14375532246583529804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037079.P14375532246583529804

namespace A037079

/-- `∩[A037081(n), A043089(n)]` -/
def P14375532246583529804.Spec : Prop :=
  ∀ n, (P14375532246583529804.a n : ℤ) = A037079 n

end A037079

/-! ## A037079.P3850604289805068015

`∩[A037081(n), A369635(n+1)]`
-/

namespace A037079.P3850604289805068015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037079.P3850604289805068015

namespace A037079

/-- `∩[A037081(n), A369635(n+1)]` -/
def P3850604289805068015.Spec : Prop :=
  ∀ n, (P3850604289805068015.a n : ℤ) = A037079 n

end A037079

/-! ## A037079.P15850506174953531018

`A105529(A246360(n+1)-1)`
-/

namespace A037079.P15850506174953531018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105529 (A246360 (n + 1) - 1).toNat

end

end A037079.P15850506174953531018

namespace A037079

/-- `A105529(A246360(n+1)-1)` -/
def P15850506174953531018.Spec : Prop :=
  ∀ n, P15850506174953531018.a n = A037079 n

end A037079

/-!
# A037082: Primes of the form k!!! + 1.

The programs for A037082, there is no canonical definition to state claims against.
-/

/-! ## A037082.P6355615882724960676

`1+A007661(A037083(n+2))`
-/

namespace A037082.P6355615882724960676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007661 (A037083 (n + 2)).toNat

end

end A037082.P6355615882724960676

/-! ## A037082.P217972941727129244

`p?[(n+1)*a(n-3)-n]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A037082.P217972941727129244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037082.P217972941727129244

/-! ## A037082.P13824746254009785310

`p?[Δ[A114347(n)]+1]`
-/

namespace A037082.P13824746254009785310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037082.P13824746254009785310

/-! ## A037082.P1881372050102982714

`p?[A007661(n+1)+1]`
-/

namespace A037082.P1881372050102982714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037082.P1881372050102982714

/-! ## A037082.P12702770624802056

`record[∑{p}[A007661(n)+1, #]]`
-/

namespace A037082.P12702770624802056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037082.P12702770624802056

/-!
# A037084: Positive integers not going to 1 under iterations of the map in A001281: n->3n-1 if n odd, n->n/2 if n even.

The programs for A037084, there is no canonical definition to state claims against.
-/

/-! ## A037084.P12766064335080306669

`∪[A039501(n+1), A039502(n+1)]`
-/

namespace A037084.P12766064335080306669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A037084.P12766064335080306669

/-! ## A037084.P2797027446408067865

`lt[1, A056957(n+1)]+1`
-/

namespace A037084.P2797027446408067865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A037084.P2797027446408067865

/-! ## A037084.P840958425205470875

`A065475(lt[1, A056957(n+1)])`
-/

namespace A037084.P840958425205470875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A037084.P840958425205470875

/-! ## A037084.P7134269261404690593

`lt[1, A056957(A004277(n))]`
-/

namespace A037084.P7134269261404690593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037084.P7134269261404690593

/-! ## A037084.P9897080022428471200

`eq[char[A039500(n+1)], A218859(2*(n+1))]`
-/

namespace A037084.P9897080022428471200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A037084.P9897080022428471200

/-! ## A037084.P1238590740696417374

`eq[2, 2%A056957(A233583(n+1))]`
-/

namespace A037084.P1238590740696417374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A056957 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037084.P1238590740696417374

/-! ## A037084.P1821097347785562654

`eq[1, A001285(A224254(n+1))]+1`
-/

namespace A037084.P1821097347785562654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A224254 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037084.P1821097347785562654

/-! ## A037084.P4372136746634243939

`eq[0, A010051(A224254(n+1)²+1)]+1`
-/

namespace A037084.P4372136746634243939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A224254 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037084.P4372136746634243939

/-!
# A037085: Beatty sequence for Pi^2.

The programs for A037085, the canonical program `A037085.P10307067740225399944` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037085 has offset 0).

The definition of A037085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037085.P10307067740225399944

`floor(n*π²)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037085

/-- `floor(n*π²)` -/
def P10307067740225399944.Spec : Prop :=
  ∀ n, P10307067740225399944.a n = A037085 n

theorem P10307067740225399944.correct : P10307067740225399944.Spec := by
  intro n
  simp only [A037085]

end A037085

/-! ## A037085.P15471727962356698155

`or(floor(π*π*n), char[1])`
-/

namespace A037085.P15471727962356698155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊Real.pi * (Real.pi * (n : ℝ))⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037085.P15471727962356698155

namespace A037085

/-- `or(floor(π*π*n), char[1])` -/
def P15471727962356698155.Spec : Prop :=
  ∀ n, P15471727962356698155.a n = A037085 n

end A037085

/-! ## A037085.P11886102641379389978

`xor(1, xor(1, floor(π*π*n)))`
-/

namespace A037085.P11886102641379389978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊Real.pi * (Real.pi * (n : ℝ))⌋)

end

end A037085.P11886102641379389978

namespace A037085

/-- `xor(1, xor(1, floor(π*π*n)))` -/
def P11886102641379389978.Spec : Prop :=
  ∀ n, P11886102641379389978.a n = A037085 n

end A037085

/-! ## A037085.P5311656643374346346

`cot(asin(1))+floor(π*π*n)`
-/

namespace A037085.P5311656643374346346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin (1 : ℝ)) + (⌊Real.pi * (Real.pi * (n : ℝ))⌋ : ℝ)

end

end A037085.P5311656643374346346

namespace A037085

/-- `cot(asin(1))+floor(π*π*n)` -/
def P5311656643374346346.Spec : Prop :=
  ∀ n, P5311656643374346346.a n = (A037085 n : ℝ)

end A037085

/-! ## A037085.P14297938391363923252

`floor(π*π*n)-cot(asin(1))`
-/

namespace A037085.P14297938391363923252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊Real.pi * (Real.pi * (n : ℝ))⌋ : ℝ) - Real.cot (Real.arcsin (1 : ℝ))

end

end A037085.P14297938391363923252

namespace A037085

/-- `floor(π*π*n)-cot(asin(1))` -/
def P14297938391363923252.Spec : Prop :=
  ∀ n, P14297938391363923252.a n = (A037085 n : ℝ)

end A037085

/-! ## A037085.P1906739082359027987

`and(1, n)!*floor(π*π*n)`
-/

namespace A037085.P1906739082359027987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * ⌊Real.pi * (Real.pi * (n : ℝ))⌋

end

end A037085.P1906739082359027987

namespace A037085

/-- `and(1, n)!*floor(π*π*n)` -/
def P1906739082359027987.Spec : Prop :=
  ∀ n, P1906739082359027987.a n = A037085 n

end A037085

/-! ## A037085.P1756253417002156006

`floor(π*π*n)+(2*n)%2`
-/

namespace A037085.P1756253417002156006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Real.pi * (n : ℝ))⌋ + ((2 * n % 2 : ℕ) : ℤ)

end

end A037085.P1756253417002156006

namespace A037085

/-- `floor(π*π*n)+(2*n)%2` -/
def P1756253417002156006.Spec : Prop :=
  ∀ n, P1756253417002156006.a n = A037085 n

theorem P1756253417002156006.correct : P1756253417002156006.Spec := by
  intro n
  simp only [A037085, Nat.add_sub_cancel, A037085.P1756253417002156006.a, A037085.P10307067740225399944.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A037085

/-! ## A037085.P14932226473258767550

`floor(π*π*n)%A000045(n+9)`
-/

namespace A037085.P14932226473258767550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.pi * (Real.pi * (n : ℝ))⌋ (A000045 (n + 9))

end

end A037085.P14932226473258767550

namespace A037085

/-- `floor(π*π*n)%A000045(n+9)` -/
def P14932226473258767550.Spec : Prop :=
  ∀ n, P14932226473258767550.a n = A037085 n

end A037085

/-! ## A037085.P7395355124586557037

`A007318(∑[n+1])*floor(π*π*n)`
-/

namespace A037085.P7395355124586557037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ⌊Real.pi * (Real.pi * (n : ℝ))⌋

end

end A037085.P7395355124586557037

namespace A037085

/-- `A007318(∑[n+1])*floor(π*π*n)` -/
def P7395355124586557037.Spec : Prop :=
  ∀ n, P7395355124586557037.a n = A037085 n

end A037085

/-!
# A037086: Beatty sequence for sqrt(Pi).

The programs for A037086, the canonical program `A037086.P12022782348025281506` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037086 has offset 0).

The definition of A037086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037086.P12022782348025281506

`floor(n*sqrt(π))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037086

/-- `floor(n*sqrt(π))` -/
def P12022782348025281506.Spec : Prop :=
  ∀ n, P12022782348025281506.a n = A037086 n

theorem P12022782348025281506.correct : P12022782348025281506.Spec := by
  intro n
  simp only [A037086]

end A037086

/-! ## A037086.P313337410496345014

`floor(sqrt(A066643(n)))%A062408(n)`
-/

namespace A037086.P313337410496345014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A066643 n)) (A062408 n)

end

end A037086.P313337410496345014

namespace A037086

/-- `floor(sqrt(A066643(n)))%A062408(n)` -/
def P313337410496345014.Spec : Prop :=
  ∀ n, P313337410496345014.a n = A037086 n

end A037086

/-! ## A037086.P16870803880773275294

`-A001489(floor(sqrt(A066643(n))))`
-/

namespace A037086.P16870803880773275294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (Int.sqrt (A066643 n)).toNat

end

end A037086.P16870803880773275294

namespace A037086

/-- `-A001489(floor(sqrt(A066643(n))))` -/
def P16870803880773275294.Spec : Prop :=
  ∀ n, P16870803880773275294.a n = A037086 n

end A037086

/-! ## A037086.P13932385703080521344

`A004526(floor(sqrt(A066643(2*n))))`
-/

namespace A037086.P13932385703080521344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A066643 (2 * n))).toNat

end

end A037086.P13932385703080521344

namespace A037086

/-- `A004526(floor(sqrt(A066643(2*n))))` -/
def P13932385703080521344.Spec : Prop :=
  ∀ n, P13932385703080521344.a n = A037086 n

end A037086

/-! ## A037086.P9022369808858468474

`A172471(ceil(n²*atan(n²)))`
-/

namespace A037086.P9022369808858468474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌈(n ^ 2 : ℝ) * Real.arctan (n ^ 2 : ℝ)⌉.toNat

end

end A037086.P9022369808858468474

namespace A037086

/-- `A172471(ceil(n²*atan(n²)))` -/
def P9022369808858468474.Spec : Prop :=
  ∀ n, P9022369808858468474.a n = A037086 n

end A037086

/-! ## A037086.P2302778293885377693

`A003056(∑[A062389(n+1)])-1`
-/

namespace A037086.P2302778293885377693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A037086.P2302778293885377693

namespace A037086

/-- `A003056(∑[A062389(n+1)])-1` -/
def P2302778293885377693.Spec : Prop :=
  ∀ n, P2302778293885377693.a n = A037086 n

end A037086

/-! ## A037086.P15433445410740370843

`A000196(A066643(n))`
-/

namespace A037086.P15433445410740370843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A066643 n).toNat

end

end A037086.P15433445410740370843

namespace A037086

/-- `A000196(A066643(n))` -/
def P15433445410740370843.Spec : Prop :=
  ∀ n, P15433445410740370843.a n = A037086 n

end A037086

/-! ## A037086.P17852197581934778600

`A339186(A135039(n))`
-/

namespace A037086.P17852197581934778600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A135039 n).toNat

end

end A037086.P17852197581934778600

namespace A037086

/-- `A339186(A135039(n))` -/
def P17852197581934778600.Spec : Prop :=
  ∀ n, P17852197581934778600.a n = A037086 n

end A037086

/-!
# A037087: Beatty sequence for e^(1/e).

The programs for A037087, the canonical program `A037087.P3414121346300097063` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037087 has offset 0).

The definition of A037087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037087.P3414121346300097063

`floor(n*e^(1/e))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037087

/-- `floor(n*e^(1/e))` -/
def P3414121346300097063.Spec : Prop :=
  ∀ n, P3414121346300097063.a n = A037087 n

theorem P3414121346300097063.correct : P3414121346300097063.Spec := by
  intro n
  simp only [A037087]

end A037087

/-! ## A037087.P7015366083624120852

`record[A289133(n+3)-A289144(n+2)]`
-/

namespace A037087.P7015366083624120852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (n + 3) - A289144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037087.P7015366083624120852

namespace A037087

/-- `record[A289133(n+3)-A289144(n+2)]` -/
def P7015366083624120852.Spec : Prop :=
  ∀ n, P7015366083624120852.a n = A037087 n

end A037087

/-! ## A037087.P6364984693120955854

`A343609(A008605(n)-n)-n`
-/

namespace A037087.P6364984693120955854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A008605 n - (n : ℤ)).toNat - (n : ℤ)

end

end A037087.P6364984693120955854

namespace A037087

/-- `A343609(A008605(n)-n)-n` -/
def P6364984693120955854.Spec : Prop :=
  ∀ n, P6364984693120955854.a n = A037087 n

end A037087

/-! ## A037087.P11384308500475167860

`A002264(A002264(A008593(2*n)))-n`
-/

namespace A037087.P11384308500475167860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A008593 (2 * n)).toNat).toNat - (n : ℤ)

end

end A037087.P11384308500475167860

namespace A037087

/-- `A002264(A002264(A008593(2*n)))-n` -/
def P11384308500475167860.Spec : Prop :=
  ∀ n, P11384308500475167860.a n = A037087 n

end A037087

/-! ## A037087.P18421671333700717430

`round(log(A058358(2*n)))`
-/

namespace A037087.P18421671333700717430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A058358 (2 * n) : ℝ))

end

end A037087.P18421671333700717430

namespace A037087

/-- `round(log(A058358(2*n)))` -/
def P18421671333700717430.Spec : Prop :=
  ∀ n, P18421671333700717430.a n = A037087 n

end A037087

/-! ## A037087.P9288883528544258397

`floor(4*n*A001222(A020631(n+1))/9)+n`
-/

namespace A037087.P9288883528544258397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n : ℚ) * ((A001222 (A020631 (n + 1)).toNat : ℚ) / 9)⌋ + (n : ℤ)

end

end A037087.P9288883528544258397

namespace A037087

/-- `floor(4*n*A001222(A020631(n+1))/9)+n` -/
def P9288883528544258397.Spec : Prop :=
  ∀ n, P9288883528544258397.a n = A037087 n

end A037087

/-! ## A037087.P526815427650986243

`A032797(A278814(A032765(2*n)))-(n+1)`
-/

namespace A037087.P526815427650986243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (A278814 (A032765 (2 * n)).toNat).toNat - (n + 1 : ℤ)

end

end A037087.P526815427650986243

namespace A037087

/-- `A032797(A278814(A032765(2*n)))-(n+1)` -/
def P526815427650986243.Spec : Prop :=
  ∀ n, P526815427650986243.a n = A037087 n

end A037087

/-! ## A037087.P10312731921505397323

`A182008(A140229(n+1))-2`
-/

namespace A037087.P10312731921505397323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A140229 (n + 1)).toNat - 2

end

end A037087.P10312731921505397323

namespace A037087

/-- `A182008(A140229(n+1))-2` -/
def P10312731921505397323.Spec : Prop :=
  ∀ n, P10312731921505397323.a n = A037087 n

end A037087

/-!
# A037089: Lexicographically earliest strictly increasing decimal autovarious sequence: a(n) = number of distinct n-digit endings (left-zero-padded) of terms in the sequence.

The programs for A037089, there is no canonical definition to state claims against.
-/

/-! ## A037089.P17744571170797916346

`∑[∏{e}[floor(8*4^n/15), #²]]`
-/

namespace A037089.P17744571170797916346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((4 ^ n : ℚ) / 15)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037089.P17744571170797916346

/-! ## A037089.P7236587857151082982

`∑[A115638(n^3)²]`
-/

namespace A037089.P7236587857151082982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (n ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037089.P7236587857151082982

/-! ## A037089.P14679684696919382377

`∑[A326139(3^n)²]`
-/

namespace A037089.P14679684696919382377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037089.P14679684696919382377

/-! ## A037089.P15552727045589451895

`∑[A336643(3^n)²]`
-/

namespace A037089.P15552727045589451895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037089.P15552727045589451895

/-! ## A037089.P749561547219132213

`∑[A353490(3^n)²]`
-/

namespace A037089.P749561547219132213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353490 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037089.P749561547219132213

/-!
# A037090: Lexicographically earliest strictly increasing base-2 autovarious sequence: a(n) = number of distinct a(k) mod 2^n (written in base 2).

The programs for A037090, there is no canonical definition to state claims against.
-/

/-! ## A037090.P10306571522714887430

`record[A082492(record[A171715(n+1)])]`
-/

namespace A037090.P10306571522714887430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037090.P10306571522714887430

/-! ## A037090.P4569227053591210055

`A112867(∑[A112596(n+1)])`
-/

namespace A037090.P4569227053591210055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037090.P4569227053591210055

/-!
# A037091: Lexicographically earliest strictly increasing base 3 autovarious sequence: a(n) = number of distinct a(k) mod 3^n (written in base 3).

The programs for A037091, there is no canonical definition to state claims against.
-/

/-! ## A037091.P4367238407341698968

`A081729(C(n², 2))+A007088(A037467(n))`
-/

namespace A037091.P4367238407341698968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (Nat.choose (n ^ 2) 2) + A007088 (A037467 n).toNat

end

end A037091.P4367238407341698968

/-! ## A037091.P16383419470957478823

`A320390(A000040(n+1))+A007088(A037467(n))`
-/

namespace A037091.P16383419470957478823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (A000040 (n + 1)).toNat + A007088 (A037467 n).toNat

end

end A037091.P16383419470957478823

/-! ## A037091.P7435788376572289386

`A014963(A122193(n+1))+A007088(A037467(n))`
-/

namespace A037091.P7435788376572289386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A122193 (n + 1)).toNat + A007088 (A037467 n).toNat

end

end A037091.P7435788376572289386

/-! ## A037091.P7196369094847957323

`A007088(A047453(n+1))+A014963(A122193(n+1))`
-/

namespace A037091.P7196369094847957323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A047453 (n + 1)).toNat + A014963 (A122193 (n + 1)).toNat

end

end A037091.P7196369094847957323

/-! ## A037091.P14758370215471083878

`A007088(A047453(n+1))+A001222(A001153(n+1))`
-/

namespace A037091.P14758370215471083878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A047453 (n + 1)).toNat + A001222 (A001153 (n + 1)).toNat

end

end A037091.P14758370215471083878

/-!
# A037092: Number of triples {i,j,k}, i>1, j>1, k>1, such that i*j*k < n^3.

The programs for A037092, there is no canonical definition to state claims against.
-/

/-! ## A037092.P2024946427954321261

`A008651(∑[∑[5*(∑[40*n]+1)+4]])`
-/

namespace A037092.P2024946427954321261
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f3 j + 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037092.P2024946427954321261

/-!
# A037093: "Sloping binary representation" of Fibonacci numbers, slope = +1.

The programs for A037093, there is no canonical definition to state claims against.
-/

/-! ## A037093.P13919373018763911120

`floor(sqrt(A008812(4^n))/2)`
-/

namespace A037093.P13919373018763911120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A008812 (4 ^ n) : ℝ) / 2⌋

end

end A037093.P13919373018763911120

/-! ## A037093.P17695096149073516204

`floor((A039649(4^n)+2)/sqrt(5))-1`
-/

namespace A037093.P17695096149073516204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039649 (4 ^ n) + 2 : ℝ) / Real.sqrt (5 : ℝ)⌋ - 1

end

end A037093.P17695096149073516204

/-! ## A037093.P5016853683361038398

`A156684(A003947(n))`
-/

namespace A037093.P5016853683361038398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (A003947 n).toNat

end

end A037093.P5016853683361038398

/-!
# A037094: "Sloping binary representation" of Lucas numbers (A000032), slope = +1.

The programs for A037094, there is no canonical definition to state claims against.
-/

/-! ## A037094.P17654848624917891838

`∑{p}[A061955(comp[∑[n-1]])², #]`
-/

namespace A037094.P17654848624917891838
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061955 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A037094.P17654848624917891838

/-!
# A037098: Sequence A037093 shown in octal.

The programs for A037098, there is no canonical definition to state claims against.
-/

/-! ## A037098.P9771346284160666265

`A007094(A037093(n))`
-/

namespace A037098.P9771346284160666265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037093 n).toNat

end

end A037098.P9771346284160666265

/-! ## A037098.P2629383567389059293

`A007094(floor(sqrt(A008812(4^n))/2))`
-/

namespace A037098.P2629383567389059293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ⌊Real.sqrt (A008812 (4 ^ n) : ℝ) / 2⌋.toNat

end

end A037098.P2629383567389059293

/-! ## A037098.P15147564586442595893

`A007094(floor((A039649(4^n)+2)/sqrt(5))-1)`
-/

namespace A037098.P15147564586442595893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (⌊(A039649 (4 ^ n) + 2 : ℝ) / Real.sqrt (5 : ℝ)⌋ - 1).toNat

end

end A037098.P15147564586442595893

/-!
# A037099: Sequence A037094 shown in octal.

The programs for A037099, there is no canonical definition to state claims against.
-/

/-! ## A037099.P8744248931309161126

`A007094(A037094(n))`
-/

namespace A037099.P8744248931309161126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037094 n).toNat

end

end A037099.P8744248931309161126

