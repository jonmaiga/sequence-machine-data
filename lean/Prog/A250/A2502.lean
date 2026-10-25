import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A250204: Sierpiński problem in base 6: Least k > 0 such that n*6^k+1 is prime, or 0 if no such k exists.

The programs for A250204, there is no canonical definition to state claims against.
-/

/-! ## A250204.P4054684462591161151

`A054522(A136901(n+1)^A089734(n+1))`
-/

namespace A250204.P4054684462591161151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (SequenceMachineLib.roundAway ((A136901 (n + 1) : ℚ) ^ (A089734 (n + 1) : ℤ))).toNat

end

end A250204.P4054684462591161151

/-!
# A250205: Riesel problem in base 6: Least k > 0 such that n*6^k-1 is prime, or 0 if no such k exists.

The programs for A250205, there is no canonical definition to state claims against.
-/

/-! ## A250205.P7001619099323360366

`A257179(A070038(A016969(n))²)`
-/

namespace A250205.P7001619099323360366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257179 (A070038 (A016969 n).toNat ^ 2).toNat

end

end A250205.P7001619099323360366

/-! ## A250205.P4389286185609759244

`and(A359305(n+1), A398685(n+1))`
-/

namespace A250205.P4389286185609759244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359305 (n + 1)) (A398685 (n + 1))

end

end A250205.P4389286185609759244

/-! ## A250205.P16915228263296355780

`A008480(6*n+5)%A273369(2*(n+1))`
-/

namespace A250205.P16915228263296355780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (6 * n + 5)) (A273369 (2 * (n + 1)))

end

end A250205.P16915228263296355780

/-! ## A250205.P12738405407071835353

`and(p?[A313483(10*n+17)], A050363(6*n+5))`
-/

namespace A250205.P12738405407071835353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 (10 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A050363 (6 * n + 5))

end

end A250205.P12738405407071835353

/-! ## A250205.P16578024093974895879

`A291678(or(1, A346388(3*n+2)))`
-/

namespace A250205.P16578024093974895879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (Int.lor 1 (A346388 (3 * n + 2))).toNat

end

end A250205.P16578024093974895879

/-!
# A250207: The number of quartic terms in the multiplicative group modulo n.

The programs for A250207, there is no canonical definition to state claims against.
-/

/-! ## A250207.P329543223493674506

`A000010(n+1)/A073103(n+1)`
-/

namespace A250207.P329543223493674506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P329543223493674506

/-! ## A250207.P13209026904472403142

`Δ[A002088(n)]/A073103(n+1)`
-/

namespace A250207.P13209026904472403142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P13209026904472403142

/-! ## A250207.P600826763521952793

`Δ[A005728(n)]/A073103(n+1)`
-/

namespace A250207.P600826763521952793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P600826763521952793

/-! ## A250207.P4349650875537983750

`(A109606(n+1)+1)/A073103(n+1)`
-/

namespace A250207.P4349650875537983750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P4349650875537983750

/-! ## A250207.P9338208137703434614

`(A039649(n+1)-1)/A073103(n+1)`
-/

namespace A250207.P9338208137703434614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P9338208137703434614

/-! ## A250207.P12222263894957657183

`(n-A219428(n+1))/A073103(n+1)`
-/

namespace A250207.P12222263894957657183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P12222263894957657183

/-! ## A250207.P16645097838723274326

`A002322(n+1)*A034380(n+1)/A073103(n+1)`
-/

namespace A250207.P16645097838723274326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P16645097838723274326

/-! ## A250207.P13299849341749974685

`A046073(n+1)*A060594(n+1)/A073103(n+1)`
-/

namespace A250207.P13299849341749974685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ)

end

end A250207.P13299849341749974685

/-! ## A250207.P9618137585565955641

`A060839(n+1)/A073103(n+1)*A087692(n+1)`
-/

namespace A250207.P9618137585565955641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A087692 (n + 1) : ℚ)

end

end A250207.P9618137585565955641

/-! ## A250207.P1031991419984625951

`A115069(n+1)/A073103(n+1)*A115070(n+1)`
-/

namespace A250207.P1031991419984625951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115069 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A115070 (n + 1) : ℚ)

end

end A250207.P1031991419984625951

/-! ## A250207.P9052754895125436629

`A247257(n+1)/A073103(n+1)*A293485(n+1)`
-/

namespace A250207.P9052754895125436629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A250207.P9052754895125436629

/-! ## A250207.P157243762370119184

`A293482(n+1)/A073103(n+1)*A319099(n+1)`
-/

namespace A250207.P157243762370119184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A250207.P157243762370119184

/-! ## A250207.P12744546788795485972

`A293483(n+1)/A073103(n+1)*A319100(n+1)`
-/

namespace A250207.P12744546788795485972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A250207.P12744546788795485972

/-! ## A250207.P15000563787202424920

`A293484(n+1)/A073103(n+1)*A319101(n+1)`
-/

namespace A250207.P15000563787202424920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A073103 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A250207.P15000563787202424920

/-! ## A250207.P5407512927215959992

`Δ[A206297(n+1)]/(2*A073103(n+1))`
-/

namespace A250207.P5407512927215959992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 * A073103 (n + 1) : ℚ)

end

end A250207.P5407512927215959992

/-! ## A250207.P11039769657673379052

`floor(log2(A243305(n+1))/A073103(n+1))`
-/

namespace A250207.P11039769657673379052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A243305 (n + 1) : ℝ) / (A073103 (n + 1) : ℝ)⌋

end

end A250207.P11039769657673379052

/-!
# A250208: Ratio of the primitive part of 2^n-1 to the product of primitive prime factors of 2^n-1.

The programs for A250208, there is no canonical definition to state claims against.
-/

/-! ## A250208.P5659021052729438288

`A019320(n+1)/A064078(n+1)`
-/

namespace A250208.P5659021052729438288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019320 (n + 1) : ℚ) / (A064078 (n + 1) : ℚ)

end

end A250208.P5659021052729438288

/-! ## A250208.P10366110922473488625

`gcd(n+1, A019320(n+1))`
-/

namespace A250208.P10366110922473488625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A019320 (n + 1))

end

end A250208.P10366110922473488625

/-! ## A250208.P12980261624299863492

`gcd(A019320(n+1), A103517(n))`
-/

namespace A250208.P12980261624299863492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019320 (n + 1)) (A103517 n)

end

end A250208.P12980261624299863492

/-! ## A250208.P1663886585817348583

`A020639((A019320(n+1)-1)%(n+1)+1)`
-/

namespace A250208.P1663886585817348583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A019320 (n + 1) - 1) (n + 1 : ℤ) + 1).toNat

end

end A250208.P1663886585817348583

/-! ## A250208.P2780085453151632330

`A019320(n+1)%A005843(A000265(n+1))`
-/

namespace A250208.P2780085453151632330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019320 (n + 1)) (A005843 (A000265 (n + 1)).toNat)

end

end A250208.P2780085453151632330

/-! ## A250208.P8255869573774513237

`A342255(∑[n+2])`
-/

namespace A250208.P8255869573774513237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250208.P8255869573774513237

/-! ## A250208.P10197538468057674899

`A342255(A000096(n+1))+A000038(n+1)`
-/

namespace A250208.P10197538468057674899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A250208.P10197538468057674899

/-! ## A250208.P11590663732455755440

`A057427(n+1)*A342255(A000096(n+1))`
-/

namespace A250208.P11590663732455755440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A342255 (A000096 (n + 1)).toNat

end

end A250208.P11590663732455755440

/-! ## A250208.P1347670838503533689

`A342323(∑[n+3])`
-/

namespace A250208.P1347670838503533689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250208.P1347670838503533689

/-! ## A250208.P17254077677403232215

`gcd(A036295(n), A260883(n+1))`
-/

namespace A250208.P17254077677403232215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036295 n) (A260883 (n + 1))

end

end A250208.P17254077677403232215

/-!
# A250209: a(n) = least k such that k * n is in A072226, or 0 if no such k exists.

The programs for A250209, there is no canonical definition to state claims against.
-/

/-! ## A250209.P6691784429843856031

`A333765(C(A085398(n+1), 2))`
-/

namespace A250209.P6691784429843856031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333765 (Nat.choose (A085398 (n + 1)).toNat 2)

end

end A250209.P6691784429843856031

/-! ## A250209.P4351161116421135281

`A020639(A007223(A085398(n+1)))`
-/

namespace A250209.P4351161116421135281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007223 (A085398 (n + 1)).toNat).toNat

end

end A250209.P4351161116421135281

/-! ## A250209.P5276886281011077527

`A328855(A274616(A085398(n+1))²)`
-/

namespace A250209.P5276886281011077527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A274616 (A085398 (n + 1)).toNat ^ 2).toNat

end

end A250209.P5276886281011077527

/-! ## A250209.P17922978105140109889

`A121358(A225516(n+5)%A085398(n+1))`
-/

namespace A250209.P17922978105140109889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (Int.tmod (A225516 (n + 5)) (A085398 (n + 1))).toNat

end

end A250209.P17922978105140109889

/-! ## A250209.P467639302438980689

`A001222(A329667(A085398(n+1))+A085398(n+1))`
-/

namespace A250209.P467639302438980689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329667 (A085398 (n + 1)).toNat + A085398 (n + 1)).toNat

end

end A250209.P467639302438980689

/-!
# A250211: Square array read by antidiagonals: A(m,n) = multiplicative order of m mod n, or 0 if m and n are not coprime.

The programs for A250211, there is no canonical definition to state claims against.
-/

/-! ## A250211.P8855704517485128020

`A054431(n+1)*A066799(n+1)`
-/

namespace A250211.P8855704517485128020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) * A066799 (n + 1)

end

end A250211.P8855704517485128020

/-! ## A250211.P15230652785236374056

`lcm(A066799(n+1), A323378(n+1))`
-/

namespace A250211.P15230652785236374056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066799 (n + 1)) (A323378 (n + 1))

end

end A250211.P15230652785236374056

/-! ## A250211.P15737619230413441999

`A066799(n+1)%C(A102057(n+1)+5, 5)`
-/

namespace A250211.P15737619230413441999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066799 (n + 1)) (Nat.choose (A102057 (n + 1) + 5).toNat 5 : ℤ)

end

end A250211.P15737619230413441999

/-! ## A250211.P12951287840937330235

`A066799(n+1)*A127093(A286101(n+1))`
-/

namespace A250211.P12951287840937330235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (n + 1) * A127093 (A286101 (n + 1)).toNat

end

end A250211.P12951287840937330235

/-! ## A250211.P10188022332638865334

`A066799(n+1)%A256758(A102057(n+1))`
-/

namespace A250211.P10188022332638865334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066799 (n + 1)) (A256758 (A102057 (n + 1)).toNat)

end

end A250211.P10188022332638865334

/-! ## A250211.P18041430833357929060

`A054431(n+1)/A066799(n+1)^A155031(n+1)`
-/

namespace A250211.P18041430833357929060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054431 (n + 1) : ℚ) / (A066799 (n + 1) : ℚ) ^ (A155031 (n + 1) : ℤ)

end

end A250211.P18041430833357929060

/-! ## A250211.P16090953227912784311

`A000035(A187596(n))*A066799(n+1)`
-/

namespace A250211.P16090953227912784311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187596 n).toNat * A066799 (n + 1)

end

end A250211.P16090953227912784311

/-! ## A250211.P14577894862759445840

`A323378(n+1)^A095728(n+1)*A066799(n+1)`
-/

namespace A250211.P14577894862759445840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323378 (n + 1) : ℚ) ^ (A095728 (n + 1) : ℤ) * (A066799 (n + 1) : ℚ)

end

end A250211.P14577894862759445840

/-!
# A250212: Second partial sums of seventh powers (A001015).

The programs for A250212, the canonical program `A250212.P10904925553962529399` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250212 has offset 1).

The definition of A250212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250212.P10904925553962529399

`2*a(n-1)-a(n-2)+(n+1)^7` with `a(0)=1, a(1)=130`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250212

/-- `2*a(n-1)-a(n-2)+(n+1)^7` -/
def P10904925553962529399.Spec : Prop :=
  ∀ n, P10904925553962529399.a n = A250212 (n + 1)

theorem P10904925553962529399.correct : P10904925553962529399.Spec := by
  intro n
  simp only [A250212, Nat.add_sub_cancel]

end A250212

/-! ## A250212.P2386840466752165938

`C(n+3, 3)*(5*(n+2)^6-25*(n+2)^4+38*(n+2)²-12)/60`
-/

namespace A250212.P2386840466752165938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) * ((5 * (n + 2) ^ 6 : ℤ) - (25 * (n + 2) ^ 4 : ℤ) + (38 * (n + 2) ^ 2 : ℤ) - 12) : ℚ) / 60

end

end A250212.P2386840466752165938

namespace A250212

/-- `C(n+3, 3)*(5*(n+2)^6-25*(n+2)^4+38*(n+2)²-12)/60` -/
def P2386840466752165938.Spec : Prop :=
  ∀ n, P2386840466752165938.a n = (A250212 (n + 1) : ℚ)

end A250212

/-! ## A250212.P1967668983493516557

`A239094(n+2)`
-/

namespace A250212.P1967668983493516557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239094 (n + 2)

end

end A250212.P1967668983493516557

namespace A250212

/-- `A239094(n+2)` -/
def P1967668983493516557.Spec : Prop :=
  ∀ n, P1967668983493516557.a n = A250212 (n + 1)

end A250212

/-! ## A250212.P12423742184334014239

`∑[∑[(n+1)^7]]`
-/

namespace A250212.P12423742184334014239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250212.P12423742184334014239

namespace A250212

/-- `∑[∑[(n+1)^7]]` -/
def P12423742184334014239.Spec : Prop :=
  ∀ n, (P12423742184334014239.a n : ℤ) = A250212 (n + 1)

end A250212

/-! ## A250212.P9467850692672098365

`A000541(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A250212.P9467850692672098365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000541 (n + 1) + a (n - 1)

end

end A250212.P9467850692672098365

namespace A250212

/-- `A000541(n+1)+a(n-1)` -/
def P9467850692672098365.Spec : Prop :=
  ∀ n, P9467850692672098365.a n = A250212 (n + 1)

end A250212

/-! ## A250212.P130208035586620944

`floor(∑[∑[A001016(n+1)/(n+1)]])`
-/

namespace A250212.P130208035586620944
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A250212.P130208035586620944

namespace A250212

/-- `floor(∑[∑[A001016(n+1)/(n+1)]])` -/
def P130208035586620944.Spec : Prop :=
  ∀ n, P130208035586620944.a n = A250212 (n + 1)

end A250212

/-! ## A250212.P3336503755474731304

`∑[A231306(n+1)]+∑[A231306(n)]`
-/

namespace A250212.P3336503755474731304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A250212.P3336503755474731304

namespace A250212

/-- `∑[A231306(n+1)]+∑[A231306(n)]` -/
def P3336503755474731304.Spec : Prop :=
  ∀ n, P3336503755474731304.a n = A250212 (n + 1)

end A250212

/-! ## A250212.P3205561097529953682

`record[A239094(abs(2-n))]`
-/

namespace A250212.P3205561097529953682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239094 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250212.P3205561097529953682

namespace A250212

/-- `record[A239094(abs(2-n))]` -/
def P3205561097529953682.Spec : Prop :=
  ∀ n, P3205561097529953682.a n = A250212 (n + 1)

end A250212

/-!
# A250213: Number of distinct prime factors of A241601(n).

The programs for A250213, there is no canonical definition to state claims against.
-/

/-! ## A250213.P6707188640646508240

`A065339(or(4, A342995(n+1)))`
-/

namespace A250213.P6707188640646508240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (Int.lor 4 (A342995 (n + 1))).toNat

end

end A250213.P6707188640646508240

/-! ## A250213.P17525686363894633325

`A001876(A045536(n+1)*A337563(n+3))`
-/

namespace A250213.P17525686363894633325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A045536 (n + 1) * A337563 (n + 3)).toNat

end

end A250213.P17525686363894633325

/-! ## A250213.P10152840386993102748

`A320005(A034699(3*n+2)+A001045(n))`
-/

namespace A250213.P10152840386993102748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A034699 (3 * n + 2) + A001045 n).toNat

end

end A250213.P10152840386993102748

/-! ## A250213.P5931509373276179322

`A235044(A105458(n+1)%A005101(n+1))`
-/

namespace A250213.P5931509373276179322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (Int.tmod (A105458 (n + 1)) (A005101 (n + 1))).toNat

end

end A250213.P5931509373276179322

/-! ## A250213.P4898355303787426512

`A210324(n+1)%A107435(A256217(n+1))`
-/

namespace A250213.P4898355303787426512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210324 (n + 1)) (A107435 (A256217 (n + 1)).toNat)

end

end A250213.P4898355303787426512

/-!
# A250214: Number of values of k such that prime(n) divides A241601(k).

The programs for A250214, there is no canonical definition to state claims against.
-/

/-! ## A250214.P15081839802526255646

`A240009(n)%A294432(A264336(n+1))`
-/

namespace A250214.P15081839802526255646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240009 n) (A294432 (A264336 (n + 1)).toNat)

end

end A250214.P15081839802526255646

/-! ## A250214.P8035090319434770802

`A284256(A241981(n)+A000010(n+1))`
-/

namespace A250214.P8035090319434770802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A241981 n + A000010 (n + 1)).toNat

end

end A250214.P8035090319434770802

/-! ## A250214.P3518922925471682872

`A284258(A241981(n)+A000010(n+1))`
-/

namespace A250214.P3518922925471682872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A241981 n + A000010 (n + 1)).toNat

end

end A250214.P3518922925471682872

/-! ## A250214.P4119505157495157823

`A048256(A035506(n))%A160520(n+1)`
-/

namespace A250214.P4119505157495157823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048256 (A035506 n).toNat) (A160520 (n + 1))

end

end A250214.P4119505157495157823

/-! ## A250214.P1544387027755389343

`A055641(A246201(n+1)+A071154(n+1))`
-/

namespace A250214.P1544387027755389343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A246201 (n + 1) + A071154 (n + 1)).toNat

end

end A250214.P1544387027755389343

/-!
# A250216: Weak irregular primes. A prime is weak irregular iff it is a Bernoulli irregular prime or an Euler irregular prime.

The programs for A250216, there is no canonical definition to state claims against.
-/

/-! ## A250216.P7093950916095600003

`A065091(lt[0, A250214(n+1)])`
-/

namespace A250216.P7093950916095600003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A250216.P7093950916095600003

/-! ## A250216.P5211814507861000308

`A000040(lt[0, A250214(n+1)]+1)`
-/

namespace A250216.P5211814507861000308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A250216.P5211814507861000308

/-! ## A250216.P10407934767703538969

`A008578(lt[0, A250214(n+1)]+2)`
-/

namespace A250216.P10407934767703538969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A250216.P10407934767703538969

/-! ## A250216.P14656240703956958995

`∪[A000928(n+1), A120337(n+1)]`
-/

namespace A250216.P14656240703956958995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250216.P14656240703956958995

/-! ## A250216.P17250826058093781281

`A006093(lt[0, A250214(n+1)]+1)+1`
-/

namespace A250216.P17250826058093781281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A250216.P17250826058093781281

/-! ## A250216.P6139233434226146415

`xor(1, A039915(lt[0, A250214(n+1)]+1))`
-/

namespace A250216.P6139233434226146415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A039915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1))

end

end A250216.P6139233434226146415

/-! ## A250216.P8815798532075486972

`∪[A000040(A105018(n+1)), A120337(n+1)]`
-/

namespace A250216.P8815798532075486972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105018 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250216.P8815798532075486972

/-!
# A250218: Record values in A085398.

The programs for A250218, there is no canonical definition to state claims against.
-/

/-! ## A250218.P9503380231673044508

`record[A085398(n+1)]`
-/

namespace A250218.P9503380231673044508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250218.P9503380231673044508

/-! ## A250218.P3788692499896635875

`A085398(A250217(n+1))`
-/

namespace A250218.P3788692499896635875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A250217 (n + 1)).toNat

end

end A250218.P3788692499896635875

/-! ## A250218.P8008739949628159172

`record[A085398(A344180(n))]-A011744(n)`
-/

namespace A250218.P8008739949628159172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A011744 n

end

end A250218.P8008739949628159172

/-! ## A250218.P275184623541577120

`record[A085398(A344180(n))]-A185246(n)`
-/

namespace A250218.P275184623541577120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185246 n

end

end A250218.P275184623541577120

/-! ## A250218.P13016794465331221391

`record[A085398(A344180(n))]%A005009(n)`
-/

namespace A250218.P13016794465331221391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005009 n)

end

end A250218.P13016794465331221391

/-!
# A250220: Numbers k such that A241601(k) is prime.

The programs for A250220, there is no canonical definition to state claims against.
-/

/-! ## A250220.P1996749207724793873

`eq[1, A250213(n)]`
-/

namespace A250220.P1996749207724793873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250220.P1996749207724793873

/-!
# A250222: a(n) = phi(2n+1) - phi(2n), where phi is A000010.

The programs for A250222, the canonical program `A250222.P10068507283235786758` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250222 has offset 1).

The definition of A250222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A250222.P18170509651003718084

`A037225(n+1)-A062570(n+1)`
-/

namespace A250222.P18170509651003718084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) - A062570 (n + 1)

end

end A250222.P18170509651003718084

namespace A250222

/-- `A037225(n+1)-A062570(n+1)` -/
def P18170509651003718084.Spec : Prop :=
  ∀ n, P18170509651003718084.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P10068507283235786758

`A057000(2*(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A250222

/-- `A057000(2*(n+1))` -/
def P10068507283235786758.Spec : Prop :=
  ∀ n, P10068507283235786758.a n = A250222 (n + 1)

theorem P10068507283235786758.correct : P10068507283235786758.Spec := by
  intro n
  simp only [A250222, Nat.add_sub_cancel]

end A250222

/-! ## A250222.P9229485804905546132

`A000010(2*n+3)-Δ[A049690(n)]`
-/

namespace A250222.P9229485804905546132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) - (f1 (n + 1) - f1 n)

end

end A250222.P9229485804905546132

namespace A250222

/-- `A000010(2*n+3)-Δ[A049690(n)]` -/
def P9229485804905546132.Spec : Prop :=
  ∀ n, P9229485804905546132.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P14888993875412319377

`A037225(n+1)-A000010(2*(n+1))`
-/

namespace A250222.P14888993875412319377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) - A000010 (2 * (n + 1))

end

end A250222.P14888993875412319377

namespace A250222

/-- `A037225(n+1)-A000010(2*(n+1))` -/
def P14888993875412319377.Spec : Prop :=
  ∀ n, P14888993875412319377.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P4542053732526046920

`A000010(2*n+3)-A062570(n+1)`
-/

namespace A250222.P4542053732526046920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) - A062570 (n + 1)

end

end A250222.P4542053732526046920

namespace A250222

/-- `A000010(2*n+3)-A062570(n+1)` -/
def P4542053732526046920.Spec : Prop :=
  ∀ n, P4542053732526046920.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P12292440238948855884

`A000010(2*n+3)-A000010(2*(n+1))`
-/

namespace A250222.P12292440238948855884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) - A000010 (2 * (n + 1))

end

end A250222.P12292440238948855884

namespace A250222

/-- `A000010(2*n+3)-A000010(2*(n+1))` -/
def P12292440238948855884.Spec : Prop :=
  ∀ n, P12292440238948855884.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P17780694724060042882

`Δ[A002088(2*n+1)]-A062570(2*(n+1))`
-/

namespace A250222.P17780694724060042882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062570 (2 * (n + 1))

end

end A250222.P17780694724060042882

namespace A250222

/-- `Δ[A002088(2*n+1)]-A062570(2*(n+1))` -/
def P17780694724060042882.Spec : Prop :=
  ∀ n, P17780694724060042882.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P13516566515633500067

`A037225(n+1)+A049690(n)-A049690(n+1)`
-/

namespace A250222.P13516566515633500067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) + (A049690 n - A049690 (n + 1))

end

end A250222.P13516566515633500067

namespace A250222

/-- `A037225(n+1)+A049690(n)-A049690(n+1)` -/
def P13516566515633500067.Spec : Prop :=
  ∀ n, P13516566515633500067.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P5832887756764614551

`A037225(n+1)-A034444(n+1)*A089692(n+1)`
-/

namespace A250222.P5832887756764614551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) - A034444 (n + 1) * A089692 (n + 1)

end

end A250222.P5832887756764614551

namespace A250222

/-- `A037225(n+1)-A034444(n+1)*A089692(n+1)` -/
def P5832887756764614551.Spec : Prop :=
  ∀ n, P5832887756764614551.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P16670938141752627684

`Δ[A005728(2*n+1)]-A062570(2*(n+1))`
-/

namespace A250222.P16670938141752627684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062570 (2 * (n + 1))

end

end A250222.P16670938141752627684

namespace A250222

/-- `Δ[A005728(2*n+1)]-A062570(2*(n+1))` -/
def P16670938141752627684.Spec : Prop :=
  ∀ n, P16670938141752627684.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P2676354638385049777

`A099957(n+2)-(A099957(n+1)+A062570(n+1))`
-/

namespace A250222.P2676354638385049777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099957 (n + 2) - (A099957 (n + 1) + A062570 (n + 1))

end

end A250222.P2676354638385049777

namespace A250222

/-- `A099957(n+2)-(A099957(n+1)+A062570(n+1))` -/
def P2676354638385049777.Spec : Prop :=
  ∀ n, P2676354638385049777.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P749461754111296200

`A072451(n+2)+A072451(n+2)-A062570(n+1)`
-/

namespace A250222.P749461754111296200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 2) + (A072451 (n + 2) - A062570 (n + 1))

end

end A250222.P749461754111296200

namespace A250222

/-- `A072451(n+2)+A072451(n+2)-A062570(n+1)` -/
def P749461754111296200.Spec : Prop :=
  ∀ n, P749461754111296200.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P15412679637883182378

`A037225(n+1)-A055034(2*(n+1))`
-/

namespace A250222.P15412679637883182378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) - A055034 (2 * (n + 1))

end

end A250222.P15412679637883182378

namespace A250222

/-- `A037225(n+1)-A055034(2*(n+1))` -/
def P15412679637883182378.Spec : Prop :=
  ∀ n, P15412679637883182378.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P6410394663609436160

`A062830(2*(n+1))-A053193(n+1)`
-/

namespace A250222.P6410394663609436160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (2 * (n + 1)) - A053193 (n + 1)

end

end A250222.P6410394663609436160

namespace A250222

/-- `A062830(2*(n+1))-A053193(n+1)` -/
def P6410394663609436160.Spec : Prop :=
  ∀ n, P6410394663609436160.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P5200267880802598606

`A053158(2*(n+1))-A180444(2*n+1)`
-/

namespace A250222.P5200267880802598606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (2 * (n + 1)) - A180444 (2 * n + 1)

end

end A250222.P5200267880802598606

namespace A250222

/-- `A053158(2*(n+1))-A180444(2*n+1)` -/
def P5200267880802598606.Spec : Prop :=
  ∀ n, P5200267880802598606.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P12379560182096317546

`A362334(2*n+1)-A092404(2*n+1)`
-/

namespace A250222.P12379560182096317546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362334 (2 * n + 1) - A092404 (2 * n + 1)

end

end A250222.P12379560182096317546

namespace A250222

/-- `A362334(2*n+1)-A092404(2*n+1)` -/
def P12379560182096317546.Spec : Prop :=
  ∀ n, P12379560182096317546.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P3014194826851339115

`Δ[A068773(Δ[n²])]`
-/

namespace A250222.P3014194826851339115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250222.P3014194826851339115

namespace A250222

/-- `Δ[A068773(Δ[n²])]` -/
def P3014194826851339115.Spec : Prop :=
  ∀ n, P3014194826851339115.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P7662815294168252313

`Δ[A083239(Δ[n²])]`
-/

namespace A250222.P7662815294168252313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083239 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250222.P7662815294168252313

namespace A250222

/-- `Δ[A083239(Δ[n²])]` -/
def P7662815294168252313.Spec : Prop :=
  ∀ n, P7662815294168252313.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P17965601565878809703

`Δ[A106481(2*n+1)-A106481(2*n)]`
-/

namespace A250222.P17965601565878809703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (2 * n + 1) - A106481 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250222.P17965601565878809703

namespace A250222

/-- `Δ[A106481(2*n+1)-A106481(2*n)]` -/
def P17965601565878809703.Spec : Prop :=
  ∀ n, P17965601565878809703.a n = A250222 (n + 1)

end A250222

/-! ## A250222.P11408319604024074144

`Δ[A225373(2*n+1)-A225373(2*n)]`
-/

namespace A250222.P11408319604024074144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 (2 * n + 1) - A225373 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250222.P11408319604024074144

namespace A250222

/-- `Δ[A225373(2*n+1)-A225373(2*n)]` -/
def P11408319604024074144.Spec : Prop :=
  ∀ n, P11408319604024074144.a n = A250222 (n + 1)

end A250222

/-!
# A250223: Number of length n+1 0..2 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250223, there is no canonical definition to state claims against.
-/

/-! ## A250223.P13004665743760377634

`A250229(∑[n+2])`
-/

namespace A250223.P13004665743760377634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250223.P13004665743760377634

/-! ## A250223.P15218553013961315635

`or(1, A250229(A000096(n+1)))`
-/

namespace A250223.P15218553013961315635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250229 (A000096 (n + 1)).toNat)

end

end A250223.P15218553013961315635

/-! ## A250223.P7581786056322600117

`record[gcd(A092921(n+2), A250229(n+2))]`
-/

namespace A250223.P7581786056322600117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 (n + 2)) (A250229 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250223.P7581786056322600117

/-! ## A250223.P7614532158786683308

`record[A250229(n+2)%A275431(n+4)]`
-/

namespace A250223.P7614532158786683308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250229 (n + 2)) (A275431 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250223.P7614532158786683308

/-! ## A250223.P1202740467185433797

`A285005(n+1)+A250229(A000096(n+1))`
-/

namespace A250223.P1202740467185433797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285005 (n + 1) + A250229 (A000096 (n + 1)).toNat

end

end A250223.P1202740467185433797

/-!
# A250224: Number of length n+1 0..3 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250224, there is no canonical definition to state claims against.
-/

/-! ## A250224.P8626641466732528149

`A250229(∑[n+3]+1)`
-/

namespace A250224.P8626641466732528149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250224.P8626641466732528149

/-! ## A250224.P6876492354080339359

`lcm(2, A250229(A034856(n+2)))`
-/

namespace A250224.P6876492354080339359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250229 (A034856 (n + 2)).toNat)

end

end A250224.P6876492354080339359

/-! ## A250224.P18130962787478113737

`and(-4, A250229(A052905(n)+3))`
-/

namespace A250224.P18130962787478113737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A250229 (A052905 n + 3).toNat)

end

end A250224.P18130962787478113737

/-! ## A250224.P15612823971546345550

`A007318(C(2, n))*A250229(A034856(n+2))`
-/

namespace A250224.P15612823971546345550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250229 (A034856 (n + 2)).toNat

end

end A250224.P15612823971546345550

/-! ## A250224.P11766179768447388531

`A007318(C(2, n))*A250229(A052905(n)+3)`
-/

namespace A250224.P11766179768447388531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250229 (A052905 n + 3).toNat

end

end A250224.P11766179768447388531

/-!
# A250225: Number of length n+1 0..4 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250225, there is no canonical definition to state claims against.
-/

/-! ## A250225.P14402473176350894790

`A250229(C(n+5, 2)-3)`
-/

namespace A250225.P14402473176350894790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (Nat.choose (n + 5) 2 - 3)

end

end A250225.P14402473176350894790

/-! ## A250225.P17468743410401960542

`A250229(∑[n+3]+n+4)`
-/

namespace A250225.P17468743410401960542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A250225.P17468743410401960542

/-! ## A250225.P1673854288330671433

`A324803(n+1)+A250229(A027379(n+2))`
-/

namespace A250225.P1673854288330671433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324803 (n + 1) + A250229 (A027379 (n + 2)).toNat

end

end A250225.P1673854288330671433

/-! ## A250225.P18213448138034332699

`A250229(A027379(n+2))%A250273(n+3)`
-/

namespace A250225.P18213448138034332699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250229 (A027379 (n + 2)).toNat) (A250273 (n + 3))

end

end A250225.P18213448138034332699

/-!
# A250226: Number of length n+1 0..5 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250226, there is no canonical definition to state claims against.
-/

/-! ## A250226.P5318585809110616316

`A250229(Δ[A264443(n)])`
-/

namespace A250226.P5318585809110616316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (f1 (n + 1) - f1 n).toNat

end

end A250226.P5318585809110616316

/-! ## A250226.P5551812070401311621

`A250229(A046691(n+3))`
-/

namespace A250226.P5551812070401311621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A046691 (n + 3)).toNat

end

end A250226.P5551812070401311621

/-! ## A250226.P8093930233392990165

`A250229(A056115(n)+11)`
-/

namespace A250226.P8093930233392990165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A056115 n + 11).toNat

end

end A250226.P8093930233392990165

/-! ## A250226.P5259074995563950281

`A250229(eq[2, A092921(n)])`
-/

namespace A250226.P5259074995563950281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250226.P5259074995563950281

/-! ## A250226.P15899781969559802083

`A250229(eq[3, A152157(n)])`
-/

namespace A250226.P15899781969559802083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250226.P15899781969559802083

/-!
# A250227: Number of length n+1 0..6 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250227, there is no canonical definition to state claims against.
-/

/-! ## A250227.P9342223970505441313

`A250229(C(n+7, 2)-5)`
-/

namespace A250227.P9342223970505441313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (Nat.choose (n + 7) 2 - 5)

end

end A250227.P9342223970505441313

/-! ## A250227.P4314873923528012595

`A250229(A052905(n+3))`
-/

namespace A250227.P4314873923528012595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A052905 (n + 3)).toNat

end

end A250227.P4314873923528012595

/-! ## A250227.P4427984996748859234

`A250229(A056119(n)+16)`
-/

namespace A250227.P4427984996748859234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A056119 n + 16).toNat

end

end A250227.P4427984996748859234

/-! ## A250227.P2717171216647267963

`A250229(eq[3, A219347(n)])`
-/

namespace A250227.P2717171216647267963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250227.P2717171216647267963

/-! ## A250227.P17429658419083282606

`A250229(eq[5, A193592(n)])`
-/

namespace A250227.P17429658419083282606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250227.P17429658419083282606

/-!
# A250228: Number of length n+1 0..7 arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250228, there is no canonical definition to state claims against.
-/

/-! ## A250228.P14237978205479354329

`A250229(A055999(n+4))`
-/

namespace A250228.P14237978205479354329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A055999 (n + 4)).toNat

end

end A250228.P14237978205479354329

/-! ## A250228.P8338216839300206949

`A250229(eq[4, A219347(n)])`
-/

namespace A250228.P8338216839300206949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250228.P8338216839300206949

/-! ## A250228.P15037092299549399481

`A250229(eq[6, A193592(n)])`
-/

namespace A250228.P15037092299549399481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250228.P15037092299549399481

/-! ## A250228.P17918185717791231231

`A250229(Δ[A023551(n+2)])`
-/

namespace A250228.P17918185717791231231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (f1 (n + 1) - f1 n).toNat

end

end A250228.P17918185717791231231

/-! ## A250228.P2282114794310875850

`A250229(A155212(n+3)+2)`
-/

namespace A250228.P2282114794310875850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A155212 (n + 3) + 2).toNat

end

end A250228.P2282114794310875850

/-!
# A250229: T(n,k)=Number of length n+1 0..k arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250229, there is no canonical definition to state claims against.
-/

/-! ## A250229.P6877380931543614488

`A118759(A250277(n+1))`
-/

namespace A250229.P6877380931543614488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A250277 (n + 1)).toNat

end

end A250229.P6877380931543614488

/-! ## A250229.P7088008944399735720

`A250277(A151764(n+1))`
-/

namespace A250229.P7088008944399735720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A151764 (n + 1)).toNat

end

end A250229.P7088008944399735720

/-! ## A250229.P11508964739951545031

`A000194(A250277(n+1)²)`
-/

namespace A250229.P11508964739951545031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A250277 (n + 1) ^ 2).toNat

end

end A250229.P11508964739951545031

/-! ## A250229.P13282073193725130387

`A000196(A250277(n+1)²)`
-/

namespace A250229.P13282073193725130387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A250277 (n + 1) ^ 2).toNat

end

end A250229.P13282073193725130387

/-! ## A250229.P12587031899125918520

`A018851(A250277(n+1)²)`
-/

namespace A250229.P12587031899125918520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A250277 (n + 1) ^ 2).toNat

end

end A250229.P12587031899125918520

/-!
# A250230: Number of length 3+1 0..n arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250230, the canonical program `A250230.P718338646285831309` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250230 has offset 1).

The definition of A250230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250230.P718338646285831309

`∑[a(n-2)+18]` with `a(0)=8, a(1)=19, a(2)=25`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250230

/-- `∑[a(n-2)+18]` -/
def P718338646285831309.Spec : Prop :=
  ∀ n, (P718338646285831309.a n : ℤ) = A250230 (n + 1)

theorem P718338646285831309.correct : P718338646285831309.Spec := by
  intro n
  simp only [A250230, Nat.add_sub_cancel]

end A250230

/-! ## A250230.P8728215997540127392

`∑[∑[floor(a(n-2))]]` with `a(0)=8, a(1)=11, a(2)=6, a(3)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A250230.P8728215997540127392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 11, 6, 12] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P8728215997540127392

namespace A250230

/-- `∑[∑[floor(a(n-2))]]` -/
def P8728215997540127392.Spec : Prop :=
  ∀ n, (P8728215997540127392.a n : ℤ) = A250230 (n + 1)

end A250230

/-! ## A250230.P4183428839092217014

`∑[∑[12/gcd(2, n)]+1]+1`
-/

namespace A250230.P4183428839092217014
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A250230.P4183428839092217014

namespace A250230

/-- `∑[∑[12/gcd(2, n)]+1]+1` -/
def P4183428839092217014.Spec : Prop :=
  ∀ n, P4183428839092217014.a n = (A250230 (n + 1) : ℚ)

end A250230

/-! ## A250230.P5445819828324186557

`∑[record[lcm(3, or(1, n))]+4]+1`
-/

namespace A250230.P5445819828324186557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A250230.P5445819828324186557

namespace A250230

/-- `∑[record[lcm(3, or(1, n))]+4]+1` -/
def P5445819828324186557.Spec : Prop :=
  ∀ n, (P5445819828324186557.a n : ℤ) = A250230 (n + 1)

end A250230

/-! ## A250230.P352439497231505207

`∑[∑[6*(n%2+1)]+1]+1`
-/

namespace A250230.P352439497231505207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A250230.P352439497231505207

namespace A250230

/-- `∑[∑[6*(n%2+1)]+1]+1` -/
def P352439497231505207.Spec : Prop :=
  ∀ n, (P352439497231505207.a n : ℤ) = A250230 (n + 1)

end A250230

/-! ## A250230.P13817212149130211242

`2*ceil((3*n/2+2)²)+n`
-/

namespace A250230.P13817212149130211242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(3 * ((n : ℚ) / 2) + 2) ^ 2⌉ + (n : ℤ)

end

end A250230.P13817212149130211242

namespace A250230

/-- `2*ceil((3*n/2+2)²)+n` -/
def P13817212149130211242.Spec : Prop :=
  ∀ n, P13817212149130211242.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P7890095057887678251

`xor(1, ∑[or(1, A017257(n))])`
-/

namespace A250230.P7890095057887678251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A017257 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250230.P7890095057887678251

namespace A250230

/-- `xor(1, ∑[or(1, A017257(n))])` -/
def P7890095057887678251.Spec : Prop :=
  ∀ n, P7890095057887678251.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P2265985371013963462

`∑[9*(n+1)-A280193(n)]`
-/

namespace A250230.P2265985371013963462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P2265985371013963462

namespace A250230

/-- `∑[9*(n+1)-A280193(n)]` -/
def P2265985371013963462.Spec : Prop :=
  ∀ n, P2265985371013963462.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P17228730953751341706

`abs(∑[9*(n+1)]-A028242(n))`
-/

namespace A250230.P17228730953751341706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A028242 n|

end

end A250230.P17228730953751341706

namespace A250230

/-- `abs(∑[9*(n+1)]-A028242(n))` -/
def P17228730953751341706.Spec : Prop :=
  ∀ n, P17228730953751341706.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P46992276349818452

`∑[A008706(n)+record[xor(6, n+1)]]`
-/

namespace A250230.P46992276349818452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P46992276349818452

namespace A250230

/-- `∑[A008706(n)+record[xor(6, n+1)]]` -/
def P46992276349818452.Spec : Prop :=
  ∀ n, P46992276349818452.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P5356435070650278768

`∑[A054977(n)+∑[A040031(n+1)]]`
-/

namespace A250230.P5356435070650278768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040031 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P5356435070650278768

namespace A250230

/-- `∑[A054977(n)+∑[A040031(n+1)]]` -/
def P5356435070650278768.Spec : Prop :=
  ∀ n, P5356435070650278768.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P5096225216805372421

`floor(A027468(n+1)-xor(1, n)/2)`
-/

namespace A250230.P5096225216805372421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027468 (n + 1) : ℚ) - (Nat.xor 1 n : ℚ) / 2⌋

end

end A250230.P5096225216805372421

namespace A250230

/-- `floor(A027468(n+1)-xor(1, n)/2)` -/
def P5096225216805372421.Spec : Prop :=
  ∀ n, P5096225216805372421.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P8244905057395978977

`Δ[A242477(n)+A005920(n)]`
-/

namespace A250230.P8244905057395978977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A005920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250230.P8244905057395978977

namespace A250230

/-- `Δ[A242477(n)+A005920(n)]` -/
def P8244905057395978977.Spec : Prop :=
  ∀ n, P8244905057395978977.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P9625173235261244093

`∑[A019426(A007310(n+1))+6]`
-/

namespace A250230.P9625173235261244093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A007310 (n + 1)).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P9625173235261244093

namespace A250230

/-- `∑[A019426(A007310(n+1))+6]` -/
def P9625173235261244093.Spec : Prop :=
  ∀ n, P9625173235261244093.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P11982365499751983953

`∑[A293990(2*n+3)+A063221(n+1)]`
-/

namespace A250230.P11982365499751983953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 (2 * n + 3) + A063221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P11982365499751983953

namespace A250230

/-- `∑[A293990(2*n+3)+A063221(n+1)]` -/
def P11982365499751983953.Spec : Prop :=
  ∀ n, P11982365499751983953.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P7469037953699342863

`xor(1, ∑[A047270(3*(n+1))])`
-/

namespace A250230.P7469037953699342863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250230.P7469037953699342863

namespace A250230

/-- `xor(1, ∑[A047270(3*(n+1))])` -/
def P7469037953699342863.Spec : Prop :=
  ∀ n, P7469037953699342863.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P9533284319274656508

`∑[A166138(A103517(A007494(n)))]`
-/

namespace A250230.P9533284319274656508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166138 (A103517 (A007494 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250230.P9533284319274656508

namespace A250230

/-- `∑[A166138(A103517(A007494(n)))]` -/
def P9533284319274656508.Spec : Prop :=
  ∀ n, P9533284319274656508.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P14163657984298819809

`xor(1, ∑[A063196(9*(n+1))])`
-/

namespace A250230.P14163657984298819809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (9 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250230.P14163657984298819809

namespace A250230

/-- `xor(1, ∑[A063196(9*(n+1))])` -/
def P14163657984298819809.Spec : Prop :=
  ∀ n, P14163657984298819809.a n = A250230 (n + 1)

end A250230

/-! ## A250230.P18427777406008173094

`xor(1, ∑[A109613(9*n+8)])`
-/

namespace A250230.P18427777406008173094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (9 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250230.P18427777406008173094

namespace A250230

/-- `xor(1, ∑[A109613(9*n+8)])` -/
def P18427777406008173094.Spec : Prop :=
  ∀ n, P18427777406008173094.a n = A250230 (n + 1)

end A250230

/-!
# A250231: Number of length 4+1 0..n arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250231, there is no canonical definition to state claims against.
-/

/-! ## A250231.P15346309529816197907

`A250229(∑[n+3]+7)`
-/

namespace A250231.P15346309529816197907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250231.P15346309529816197907

/-! ## A250231.P630547984116304635

`or(n%2, A250229(A145018(n+4)))`
-/

namespace A250231.P630547984116304635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A250229 (A145018 (n + 4)).toNat)

end

end A250231.P630547984116304635

/-! ## A250231.P5720329130944311512

`A007318(C(3, n))*A250229(A145018(n+4))`
-/

namespace A250231.P5720329130944311512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A250229 (A145018 (n + 4)).toNat

end

end A250231.P5720329130944311512

/-! ## A250231.P2081973380045217912

`A250229(A145018(n+4))^A007318(C(2, n))`
-/

namespace A250231.P2081973380045217912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250229 (A145018 (n + 4)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A250231.P2081973380045217912

/-! ## A250231.P8162060647465022942

`A250229(A145018(n+4))%A000041(n+57)`
-/

namespace A250231.P8162060647465022942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250229 (A145018 (n + 4)).toNat) (A000041 (n + 57))

end

end A250231.P8162060647465022942

/-!
# A250232: Number of length 5+1 0..n arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250232, there is no canonical definition to state claims against.
-/

/-! ## A250232.P7972714462045330825

`A250229(A167499(n+3))`
-/

namespace A250232.P7972714462045330825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A167499 (n + 3)).toNat

end

end A250232.P7972714462045330825

/-! ## A250232.P3378701530163963933

`A250229(A077169(n+5))`
-/

namespace A250232.P3378701530163963933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A077169 (n + 5)).toNat

end

end A250232.P3378701530163963933

/-! ## A250232.P11465317642276966891

`A250229(A155212(n)+13)`
-/

namespace A250232.P11465317642276966891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A155212 n + 13).toNat

end

end A250232.P11465317642276966891

/-! ## A250232.P5777193941515498133

`A250229(A056000(n)+15)`
-/

namespace A250232.P5777193941515498133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A056000 n + 15).toNat

end

end A250232.P5777193941515498133

/-! ## A250232.P10595930985740829904

`A250229(eq[7, A066657(n)])`
-/

namespace A250232.P10595930985740829904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250232.P10595930985740829904

/-!
# A250233: Number of length 6+1 0..n arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250233, there is no canonical definition to state claims against.
-/

/-! ## A250233.P6974745021984326335

`A250229(A167499(n+4)+1)`
-/

namespace A250233.P6974745021984326335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A167499 (n + 4) + 1).toNat

end

end A250233.P6974745021984326335

/-! ## A250233.P17239118208578781868

`A250229(A167614(n+4)+3)`
-/

namespace A250233.P17239118208578781868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A167614 (n + 4) + 3).toNat

end

end A250233.P17239118208578781868

/-! ## A250233.P1445659402403758086

`A250229(A000124(n+5)+5)`
-/

namespace A250233.P1445659402403758086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A000124 (n + 5) + 5).toNat

end

end A250233.P1445659402403758086

/-! ## A250233.P14347479762286760916

`A250229(A000217(n+5)+6)`
-/

namespace A250233.P14347479762286760916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A000217 (n + 5) + 6).toNat

end

end A250233.P14347479762286760916

/-! ## A250233.P3563217216898638605

`A250229(eq[7, A131818(n+1)])`
-/

namespace A250233.P3563217216898638605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250233.P3563217216898638605

/-!
# A250234: Number of length 7+1 0..n arrays with the sum of the cubes of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250234, there is no canonical definition to state claims against.
-/

/-! ## A250234.P1382989796005921817

`A250229(A056119(n)+28)`
-/

namespace A250234.P1382989796005921817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A056119 n + 28).toNat

end

end A250234.P1382989796005921817

/-! ## A250234.P5107152234601754726

`A250229(eq[11, A066657(n)])`
-/

namespace A250234.P5107152234601754726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250234.P5107152234601754726

/-! ## A250234.P14622192319577286975

`A250229(A167614(n+5)+4)`
-/

namespace A250234.P14622192319577286975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A167614 (n + 5) + 4).toNat

end

end A250234.P14622192319577286975

/-! ## A250234.P18287644634156733306

`A250229(A000124(n+6)+6)`
-/

namespace A250234.P18287644634156733306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A000124 (n + 6) + 6).toNat

end

end A250234.P18287644634156733306

/-! ## A250234.P9243806561918033806

`A250229(A034856(n+5)+9)`
-/

namespace A250234.P9243806561918033806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (A034856 (n + 5) + 9).toNat

end

end A250234.P9243806561918033806

/-!
# A250235: Discriminants of real quadratic fields with cyclic 3-class group (3).

The programs for A250235, there is no canonical definition to state claims against.
-/

/-! ## A250235.P6246933107011190687

`∪[A094612(n+1), A250236(n+1)]`
-/

namespace A250235.P6246933107011190687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250235.P6246933107011190687

/-! ## A250235.P10131329877558488843

`∪[A094612(n+1), A218156(n+1)]%A218158(n+1)`
-/

namespace A250235.P10131329877558488843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218156 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A218158 (n + 1))

end

end A250235.P10131329877558488843

/-! ## A250235.P10407555739053919615

`∪[A250237(A044917(n+1)+2), A094612(n+1)]`
-/

namespace A250235.P10407555739053919615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250237 (A044917 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250235.P10407555739053919615

/-! ## A250235.P68334715218848369

`∪[A250237(A044917(n+1)), A094612(n+2)]`
-/

namespace A250235.P68334715218848369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250237 (A044917 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250235.P68334715218848369

/-! ## A250235.P15104577466319494075

`∪[A250236(A077168(n)), A094612(n+3)]`
-/

namespace A250235.P15104577466319494075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250236 (A077168 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250235.P15104577466319494075

/-!
# A250236: Fundamental discriminants d such that the real quadratic field Q(sqrt(d)) and the complex quadratic field Q(sqrt(-3d)) both have cyclic 3-class groups of order 3.

The programs for A250236, there is no canonical definition to state claims against.
-/

/-! ## A250236.P14028927741970120164

`A250235(A007095(A044917(n+1)))`
-/

namespace A250236.P14028927741970120164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (A007095 (A044917 (n + 1)).toNat).toNat

end

end A250236.P14028927741970120164

/-! ## A250236.P754710681017435844

`A250235(∑[A318045(A003557(n+1)²)])`
-/

namespace A250236.P754710681017435844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A003557 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A250236.P754710681017435844

/-! ## A250236.P140470952615899871

`A250235(A297037(n+1)+A044917(n+1))`
-/

namespace A250236.P140470952615899871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (A297037 (n + 1) + A044917 (n + 1)).toNat

end

end A250236.P140470952615899871

/-! ## A250236.P10967123009367469776

`A250235(A297037(n+1)+A077168(n))`
-/

namespace A250236.P10967123009367469776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (A297037 (n + 1) + A077168 n).toNat

end

end A250236.P10967123009367469776

/-! ## A250236.P18009612110836738906

`A250235(A087027(n+1))`
-/

namespace A250236.P18009612110836738906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (A087027 (n + 1)).toNat

end

end A250236.P18009612110836738906

/-!
# A250237: Fundamental discriminants d uniquely characterizing all complex biquadratic fields Q(sqrt(-3),sqrt(d)) which have 3-class group of type (3,3) and abelian 3-class field tower of length 1.

The programs for A250237, there is no canonical definition to state claims against.
-/

/-! ## A250237.P11398896168444986501

`record[gcd(A250236(n+1), A350899(n+1))]`
-/

namespace A250237.P11398896168444986501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250236 (n + 1)) (A350899 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250237.P11398896168444986501

/-! ## A250237.P11907273176793919408

`A250236(∑[A014963(A177984(n))])`
-/

namespace A250237.P11907273176793919408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A177984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A250237.P11907273176793919408

/-! ## A250237.P15949385845114797448

`A250236(A323288(n+1)-A034887(3*n+1))`
-/

namespace A250237.P15949385845114797448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250236 (A323288 (n + 1) - A034887 (3 * n + 1)).toNat

end

end A250237.P15949385845114797448

/-! ## A250237.P4990414907622421767

`A250235(∑[A233138(∑[2^n])])`
-/

namespace A250237.P4990414907622421767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233138 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A250237.P4990414907622421767

/-! ## A250237.P6359450255140208200

`A250236(∑[(A245013(2*(n+2))%A144696(2*n+3))!])`
-/

namespace A250237.P6359450255140208200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A245013 (2 * (n + 2))) (A144696 (2 * n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250237.P6359450255140208200

/-!
# A250243: Permutation of natural numbers: a(n) = A246275(A055396(n+1), a(A078898(n+1))).

The programs for A250243, there is no canonical definition to state claims against.
-/

/-! ## A250243.P15757423473316887860

`A246684(A249813(n+1))`
-/

namespace A250243.P15757423473316887860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246684 (A249813 (n + 1)).toNat

end

end A250243.P15757423473316887860

/-! ## A250243.P12641787700199812469

`A249816(A249816(A249814(A246683(n+1))))`
-/

namespace A250243.P12641787700199812469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249816 (A249814 (A246683 (n + 1)).toNat).toNat).toNat

end

end A250243.P12641787700199812469

/-! ## A250243.P16630381283327533005

`A249816(n+1)%A002762(n)`
-/

namespace A250243.P16630381283327533005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249816 (n + 1)) (A002762 n)

end

end A250243.P16630381283327533005

/-! ## A250243.P12494986027205400401

`and(A249816(n+1), A362531(n+1))`
-/

namespace A250243.P12494986027205400401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249816 (n + 1)) (A362531 (n + 1))

end

end A250243.P12494986027205400401

/-! ## A250243.P11711763150057424154

`A249816(n+1)+A000007(A141412(n))`
-/

namespace A250243.P11711763150057424154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (n + 1) + A000007 (A141412 n).toNat

end

end A250243.P11711763150057424154

/-!
# A250244: Permutation of natural numbers: a(n) = A249741(A055396(n+1), a(A246277(n+1))).

The programs for A250244, there is no canonical definition to state claims against.
-/

/-! ## A250244.P17845129831984210600

`A249814(A246683(n+1))`
-/

namespace A250244.P17845129831984210600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249814 (A246683 (n + 1)).toNat

end

end A250244.P17845129831984210600

/-! ## A250244.P11698065665094479281

`A249815(A249815(A246684(A249813(n+1))))`
-/

namespace A250244.P11698065665094479281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A249815 (A246684 (A249813 (n + 1)).toNat).toNat).toNat

end

end A250244.P11698065665094479281

/-! ## A250244.P1107060134460932126

`A249815(n+1)%A002762(n)`
-/

namespace A250244.P1107060134460932126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249815 (n + 1)) (A002762 n)

end

end A250244.P1107060134460932126

/-! ## A250244.P17791409182379280973

`A249815(n+1)+A049057(n)%2`
-/

namespace A250244.P17791409182379280973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (n + 1) + Int.tmod (A049057 n) 2

end

end A250244.P17791409182379280973

/-! ## A250244.P6275504605632762303

`and(A249815(n+1), A362531(n+1))`
-/

namespace A250244.P6275504605632762303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249815 (n + 1)) (A362531 (n + 1))

end

end A250244.P6275504605632762303

/-!
# A250245: Permutation of natural numbers: a(1) = 1, a(n) = A083221(A055396(n),a(A246277(n))).

The programs for A250245, there is no canonical definition to state claims against.
-/

/-! ## A250245.P2199372196053417333

`A252755(A243071(n+1))`
-/

namespace A250245.P2199372196053417333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A243071 (n + 1)).toNat

end

end A250245.P2199372196053417333

/-! ## A250245.P4420282799298689285

`A020639(n+1)*A280495(n+1)`
-/

namespace A250245.P4420282799298689285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A280495 (n + 1)

end

end A250245.P4420282799298689285

/-! ## A250245.P16950606699045298143

`sqrt(A088377(n+1))*A280495(n+1)`
-/

namespace A250245.P16950606699045298143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ) * (A280495 (n + 1) : ℝ)

end

end A250245.P16950606699045298143

/-! ## A250245.P14347964512143317790

`(A061228(n+1)-(n+1))*A280495(n+1)`
-/

namespace A250245.P14347964512143317790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) - (n + 1 : ℤ)) * A280495 (n + 1)

end

end A250245.P14347964512143317790

/-! ## A250245.P17798524554070110457

`A285109(n+1)/(n+1)*A280495(n+1)`
-/

namespace A250245.P17798524554070110457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (n + 1 : ℚ) * (A280495 (n + 1) : ℚ)

end

end A250245.P17798524554070110457

/-! ## A250245.P6315356568403962112

`gcd(n+1, A063918(n+1))*A280495(n+1)`
-/

namespace A250245.P6315356568403962112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A063918 (n + 1)) : ℤ) * A280495 (n + 1)

end

end A250245.P6315356568403962112

/-! ## A250245.P16200710799385141498

`(A140524(n+1)-xor(1, n))*A280495(n+1)`
-/

namespace A250245.P16200710799385141498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140524 (n + 1) - (Nat.xor 1 n : ℤ)) * A280495 (n + 1)

end

end A250245.P16200710799385141498

/-! ## A250245.P1999520097585110041

`A250246(n+1)*A280495(n+1)/A280496(n+1)`
-/

namespace A250245.P1999520097585110041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) * A280495 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ)

end

end A250245.P1999520097585110041

/-! ## A250245.P13610397038509441347

`A280495(2*(n+1))`
-/

namespace A250245.P13610397038509441347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (2 * (n + 1))

end

end A250245.P13610397038509441347

/-! ## A250245.P4669205906272777400

`or(char[2], A280495(n+2+n))`
-/

namespace A250245.P4669205906272777400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280495 (n + 2 + n))

end

end A250245.P4669205906272777400

/-! ## A250245.P774682951274360973

`A000027(A280495(Δ[n²+n]))`
-/

namespace A250245.P774682951274360973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A280495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A250245.P774682951274360973

/-! ## A250245.P16630754081860874321

`A269172(A302025(n+1))`
-/

namespace A250245.P16630754081860874321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A302025 (n + 1)).toNat

end

end A250245.P16630754081860874321

/-!
# A250246: Permutation of natural numbers: a(1) = 1, a(n) = A246278(A055396(n), a(A078898(n))).

The programs for A250246, there is no canonical definition to state claims against.
-/

/-! ## A250246.P7843807968335793191

`A163511(A252756(n+1))`
-/

namespace A250246.P7843807968335793191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A252756 (n + 1)).toNat

end

end A250246.P7843807968335793191

/-! ## A250246.P4062516447318914824

`A324546(n+1)+A324535(n+1)`
-/

namespace A250246.P4062516447318914824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1) + A324535 (n + 1)

end

end A250246.P4062516447318914824

/-! ## A250246.P8289984505905270472

`A324545(n+1)-A324535(n+1)`
-/

namespace A250246.P8289984505905270472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (n + 1) - A324535 (n + 1)

end

end A250246.P8289984505905270472

/-! ## A250246.P692024021342422214

`A346486(n+1)*A346487(n+1)`
-/

namespace A250246.P692024021342422214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346486 (n + 1) * A346487 (n + 1)

end

end A250246.P692024021342422214

/-! ## A250246.P16070962224693091474

`(A324546(n+1)+A324545(n+1))/2`
-/

namespace A250246.P16070962224693091474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324546 (n + 1) + A324545 (n + 1) : ℚ) / 2

end

end A250246.P16070962224693091474

/-! ## A250246.P6243923953878082251

`A020639(n+1)*A280496(n+1)`
-/

namespace A250246.P6243923953878082251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A280496 (n + 1)

end

end A250246.P6243923953878082251

/-! ## A250246.P5879643031291591081

`A250245(n+1)/A280495(n+1)*A280496(n+1)`
-/

namespace A250246.P5879643031291591081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ) * (A280496 (n + 1) : ℚ)

end

end A250246.P5879643031291591081

/-! ## A250246.P4863472941335499709

`A302026(A269171(n+1))`
-/

namespace A250246.P4863472941335499709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269171 (n + 1)).toNat

end

end A250246.P4863472941335499709

/-! ## A250246.P13315214178051223256

`A280496(2*(n+1))`
-/

namespace A250246.P13315214178051223256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * (n + 1))

end

end A250246.P13315214178051223256

/-! ## A250246.P555860286491877665

`A324546(n+1)+A078898(A324545(n+1)-A324546(n+1))`
-/

namespace A250246.P555860286491877665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1) + A078898 (A324545 (n + 1) - A324546 (n + 1)).toNat

end

end A250246.P555860286491877665

/-! ## A250246.P3902781316662030899

`A078898(A324546(n+1)+A324545(n+1))`
-/

namespace A250246.P3902781316662030899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A324546 (n + 1) + A324545 (n + 1)).toNat

end

end A250246.P3902781316662030899

/-! ## A250246.P18176178726432707564

`A280496(A103517(n))/A009194(A009194(n+1)²)`
-/

namespace A250246.P18176178726432707564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280496 (A103517 n).toNat : ℚ) / (A009194 (A009194 (n + 1) ^ 2).toNat : ℚ)

end

end A250246.P18176178726432707564

/-!
# A250251: Fixed points of A250249 and A250250.

The programs for A250251, there is no canonical definition to state claims against.
-/

/-! ## A250251.P6193410889338623850

`record[gcd(A250249(n+1), n+1)]`
-/

namespace A250251.P6193410889338623850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250249 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250251.P6193410889338623850

/-! ## A250251.P1169710315729668519

`eq[n, A250250(A004277(n)-n)]`
-/

namespace A250251.P1169710315729668519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250251.P1169710315729668519

/-! ## A250251.P11318747902038971

`A250250(eq[n+1, A250250(n+1)]+1)`
-/

namespace A250251.P11318747902038971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250251.P11318747902038971

/-! ## A250251.P17584044895378341531

`A250250(record[n-(n+1)%A250250(n+1)]+1)`
-/

namespace A250251.P17584044895378341531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n + 1 : ℤ) (A250250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A250251.P17584044895378341531

/-! ## A250251.P17950039546731785571

`eq[A005843(n), A250250(A004277(n))]`
-/

namespace A250251.P17950039546731785571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250251.P17950039546731785571

/-!
# A250252: Inverse permutation to A114881.

The programs for A250252, there is no canonical definition to state claims against.
-/

/-! ## A250252.P3378690394018799450

`A209268(A249812(n+1))`
-/

namespace A250252.P3378690394018799450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (A249812 (n + 1)).toNat

end

end A250252.P3378690394018799450

/-! ## A250252.P8255366481253662956

`A246274(A249816(n+1))`
-/

namespace A250252.P8255366481253662956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A249816 (n + 1)).toNat

end

end A250252.P8255366481253662956

/-! ## A250252.P12812866539296922778

`A246274(A249818(n+2)-1)`
-/

namespace A250252.P12812866539296922778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A249818 (n + 2) - 1).toNat

end

end A250252.P12812866539296922778

/-! ## A250252.P3500977681122371281

`A246274(∑[2*Δ[A249818(n+1)/2]])`
-/

namespace A250252.P3500977681122371281
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A250252.P3500977681122371281

/-! ## A250252.P3398861806221956294

`A038722(A249742(n+1))`
-/

namespace A250252.P3398861806221956294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A249742 (n + 1)).toNat

end

end A250252.P3398861806221956294

/-! ## A250252.P14113168677721125446

`A038722(A252460(n+2)-1)`
-/

namespace A250252.P14113168677721125446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A252460 (n + 2) - 1).toNat

end

end A250252.P14113168677721125446

/-! ## A250252.P2265828451760620172

`A246274(A246275(A249742(A246276(A246275(n+1)))))`
-/

namespace A250252.P2265828451760620172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A249742 (A246276 (A246275 (n + 1)).toNat).toNat).toNat).toNat

end

end A250252.P2265828451760620172

/-! ## A250252.P11208810823504710449

`A255130(A255407(n+2))-1`
-/

namespace A250252.P11208810823504710449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255130 (A255407 (n + 2)).toNat - 1

end

end A250252.P11208810823504710449

/-!
# A250253: First row of spectral array W(gamma+1).

The programs for A250253, there is no canonical definition to state claims against.
-/

/-! ## A250253.P17907398142715852759

`A327534(A018065(n))`
-/

namespace A250253.P17907398142715852759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (A018065 n).toNat

end

end A250253.P17907398142715852759

/-! ## A250253.P13754136823131402975

`A344742(A169986(n))`
-/

namespace A250253.P13754136823131402975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A169986 n).toNat

end

end A250253.P13754136823131402975

/-! ## A250253.P10935502717465277749

`A325251(A239915(n))`
-/

namespace A250253.P10935502717465277749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325251 (A239915 n).toNat

end

end A250253.P10935502717465277749

/-! ## A250253.P333353084318560489

`A342524(A080528(n+1))`
-/

namespace A250253.P333353084318560489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A080528 (n + 1)).toNat

end

end A250253.P333353084318560489

/-! ## A250253.P11420163494291658205

`A325368(A257863(n+1))`
-/

namespace A250253.P11420163494291658205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A257863 (n + 1)).toNat

end

end A250253.P11420163494291658205

/-!
# A250254: First row of spectral array W(gamma^2+1).

The programs for A250254, there is no canonical definition to state claims against.
-/

/-! ## A250254.P9997112331027639567

`A051176(A172353(n)+gcd(2, n)*∑[2^n])`
-/

namespace A250254.P9997112331027639567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A172353 n + ((Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)).toNat

end

end A250254.P9997112331027639567

/-! ## A250254.P718866002288053030

`A321537(n)+A085062(A000975(n+2))`
-/

namespace A250254.P718866002288053030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A085062 (A000975 (n + 2)).toNat

end

end A250254.P718866002288053030

/-! ## A250254.P9699458143326954737

`A262114(2^(n+3)+1)`
-/

namespace A250254.P9699458143326954737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262114 (2 ^ (n + 3) + 1)

end

end A250254.P9699458143326954737

/-! ## A250254.P7412468843934470397

`∪[Δ[A008611(∑[4^n-1])], 4^n]`
-/

namespace A250254.P7412468843934470397
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

end

end A250254.P7412468843934470397

/-! ## A250254.P11372185751850975456

`A092809(A061497(n+1))`
-/

namespace A250254.P11372185751850975456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092809 (A061497 (n + 1)).toNat

end

end A250254.P11372185751850975456

/-!
# A250255: First row of spectral array W(e^gamma).

The programs for A250255, there is no canonical definition to state claims against.
-/

/-! ## A250255.P8561043618354869517

`A003059(A000032(n+1)*A016116(n))`
-/

namespace A250255.P8561043618354869517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000032 (n + 1) * A016116 n).toNat

end

end A250255.P8561043618354869517

/-! ## A250255.P13285246751135132649

`A003059(A000204(n+1)*A016116(n))`
-/

namespace A250255.P13285246751135132649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000204 (n + 1) * A016116 n).toNat

end

end A250255.P13285246751135132649

/-! ## A250255.P18093402086285947494

`A275890(A302119(n))+n`
-/

namespace A250255.P18093402086285947494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 (A302119 n).toNat + (n : ℤ)

end

end A250255.P18093402086285947494

/-! ## A250255.P4285506928075789159

`record[ceil(A323212(n)/A191850(n+1))]`
-/

namespace A250255.P4285506928075789159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323212 n : ℚ) / (A191850 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250255.P4285506928075789159

/-!
# A250256: Least positive integer whose decimal digits divide the plane into n regions (A249572 variant).

The programs for A250256, the canonical program `A250256.P17424172066252353508` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250256 has offset 1).

The definition of A250256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250256.P17424172066252353508

`10*a(n-2)+8` with `a(0)=1, a(1)=6, a(2)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250256

/-- `10*a(n-2)+8` -/
def P17424172066252353508.Spec : Prop :=
  ∀ n, (P17424172066252353508.a n : ℤ) = A250256 (n + 1)

theorem P17424172066252353508.correct : P17424172066252353508.Spec := by
  intro n
  simp only [A250256, Nat.add_sub_cancel]

end A250256

/-! ## A250256.P13912111467971978749

`10*or(1, a(n-2))-2` with `a(0)=1, a(1)=6`
-/

namespace A250256.P13912111467971978749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  10 * Int.lor 1 (a (n - 2)) - 2

end

end A250256.P13912111467971978749

namespace A250256

/-- `10*or(1, a(n-2))-2` -/
def P13912111467971978749.Spec : Prop :=
  ∀ n, P13912111467971978749.a n = A250256 (n + 1)

end A250256

/-! ## A250256.P2607766869454061563

`10*xor(1, a(n-2))-2` with `a(0)=1, a(1)=6, a(2)=8`
-/

namespace A250256.P2607766869454061563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 8] fun n a =>
  10 * Int.xor 1 (a (n - 2)) - 2

end

end A250256.P2607766869454061563

namespace A250256

/-- `10*xor(1, a(n-2))-2` -/
def P2607766869454061563.Spec : Prop :=
  ∀ n, P2607766869454061563.a n = A250256 (n + 1)

end A250256

/-! ## A250256.P5262978160681144993

`A249572(n)+A000035(n)*A004643(n)`
-/

namespace A250256.P5262978160681144993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + A000035 n * A004643 n

end

end A250256.P5262978160681144993

namespace A250256

/-- `A249572(n)+A000035(n)*A004643(n)` -/
def P5262978160681144993.Spec : Prop :=
  ∀ n, P5262978160681144993.a n = A250256 (n + 1)

end A250256

/-! ## A250256.P11578372061395428710

`A249572(n)+A249572(n)-A279193(n+1)`
-/

namespace A250256.P11578372061395428710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + (A249572 n - A279193 (n + 1))

end

end A250256.P11578372061395428710

namespace A250256

/-- `A249572(n)+A249572(n)-A279193(n+1)` -/
def P11578372061395428710.Spec : Prop :=
  ∀ n, P11578372061395428710.a n = A250256 (n + 1)

end A250256

/-! ## A250256.P16686315413372840292

`2*A249572(n)-A279193(n+1)`
-/

namespace A250256.P16686315413372840292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249572 n - A279193 (n + 1)

end

end A250256.P16686315413372840292

namespace A250256

/-- `2*A249572(n)-A279193(n+1)` -/
def P16686315413372840292.Spec : Prop :=
  ∀ n, P16686315413372840292.a n = A250256 (n + 1)

end A250256

/-!
# A250257: Least nonnegative integer whose decimal digits divide the plane into n regions.

The programs for A250257, the canonical program `A250257.P18147744089525059640` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250257 has offset 1).

The definition of A250257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250257.P18147744089525059640

`10*a(n-2)+8` with `a(0)=1, a(1)=0, a(2)=8, a(3)=48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250257

/-- `10*a(n-2)+8` -/
def P18147744089525059640.Spec : Prop :=
  ∀ n, (P18147744089525059640.a n : ℤ) = A250257 (n + 1)

theorem P18147744089525059640.correct : P18147744089525059640.Spec := by
  intro n
  simp only [A250257, Nat.add_sub_cancel]

end A250257

/-! ## A250257.P8221533775676764558

`and(-5, A249572(n))`
-/

namespace A250257.P8221533775676764558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A249572 n)

end

end A250257.P8221533775676764558

namespace A250257

/-- `and(-5, A249572(n))` -/
def P8221533775676764558.Spec : Prop :=
  ∀ n, P8221533775676764558.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P3763683950645254455

`A060576(n)*A249572(n)`
-/

namespace A250257.P3763683950645254455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A249572 n

end

end A250257.P3763683950645254455

namespace A250257

/-- `A060576(n)*A249572(n)` -/
def P3763683950645254455.Spec : Prop :=
  ∀ n, P3763683950645254455.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P10260545713283803286

`lcm(A081729(n), A249572(n))`
-/

namespace A250257.P10260545713283803286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081729 n) (A249572 n)

end

end A250257.P10260545713283803286

namespace A250257

/-- `lcm(A081729(n), A249572(n))` -/
def P10260545713283803286.Spec : Prop :=
  ∀ n, (P10260545713283803286.a n : ℤ) = A250257 (n + 1)

end A250257

/-! ## A250257.P4382546595616878446

`and(A113679(n), A328333(n))`
-/

namespace A250257.P4382546595616878446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A328333 n)

end

end A250257.P4382546595616878446

namespace A250257

/-- `and(A113679(n), A328333(n))` -/
def P4382546595616878446.Spec : Prop :=
  ∀ n, P4382546595616878446.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P2967904760258604534

`and(A249572(n), A378218(n+1))`
-/

namespace A250257.P2967904760258604534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A378218 (n + 1))

end

end A250257.P2967904760258604534

namespace A250257

/-- `and(A249572(n), A378218(n+1))` -/
def P2967904760258604534.Spec : Prop :=
  ∀ n, P2967904760258604534.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P4766364333330791660

`A046094(char[1]+A000040(n+1))*A249572(n)`
-/

namespace A250257.P4766364333330791660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000040 (n + 1)).toNat * A249572 n

end

end A250257.P4766364333330791660

namespace A250257

/-- `A046094(char[1]+A000040(n+1))*A249572(n)` -/
def P4766364333330791660.Spec : Prop :=
  ∀ n, P4766364333330791660.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P2821971583242214967

`A250258(n+1)/A250256(n+1)*A249572(n)`
-/

namespace A250257.P2821971583242214967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250258 (n + 1) : ℚ) / (A250256 (n + 1) : ℚ) * (A249572 n : ℚ)

end

end A250257.P2821971583242214967

namespace A250257

/-- `A250258(n+1)/A250256(n+1)*A249572(n)` -/
def P2821971583242214967.Spec : Prop :=
  ∀ n, P2821971583242214967.a n = (A250257 (n + 1) : ℚ)

end A250257

/-! ## A250257.P2557451978900625589

`A249572(n)%A195967(n+1)`
-/

namespace A250257.P2557451978900625589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249572 n) (A195967 (n + 1))

end

end A250257.P2557451978900625589

namespace A250257

/-- `A249572(n)%A195967(n+1)` -/
def P2557451978900625589.Spec : Prop :=
  ∀ n, P2557451978900625589.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P17907878813229720613

`A249572(n)%A107382(n)`
-/

namespace A250257.P17907878813229720613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249572 n) (A107382 n)

end

end A250257.P17907878813229720613

namespace A250257

/-- `A249572(n)%A107382(n)` -/
def P17907878813229720613.Spec : Prop :=
  ∀ n, P17907878813229720613.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P8067888881741068836

`and(A058896(n), A328333(n))`
-/

namespace A250257.P8067888881741068836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058896 n) (A328333 n)

end

end A250257.P8067888881741068836

namespace A250257

/-- `and(A058896(n), A328333(n))` -/
def P8067888881741068836.Spec : Prop :=
  ∀ n, P8067888881741068836.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P8147955874874729837

`and(A249572(n), A267596(n))`
-/

namespace A250257.P8147955874874729837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267596 n)

end

end A250257.P8147955874874729837

namespace A250257

/-- `and(A249572(n), A267596(n))` -/
def P8147955874874729837.Spec : Prop :=
  ∀ n, P8147955874874729837.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P17349616593975434475

`A249572(n)-and(4, A000302(n))`
-/

namespace A250257.P17349616593975434475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n - Int.land 4 (A000302 n)

end

end A250257.P17349616593975434475

namespace A250257

/-- `A249572(n)-and(4, A000302(n))` -/
def P17349616593975434475.Spec : Prop :=
  ∀ n, P17349616593975434475.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P11777930582788760862

`and(A096045(n), A328333(n))`
-/

namespace A250257.P11777930582788760862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096045 n) (A328333 n)

end

end A250257.P11777930582788760862

namespace A250257

/-- `and(A096045(n), A328333(n))` -/
def P11777930582788760862.Spec : Prop :=
  ∀ n, P11777930582788760862.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P7725466827190339590

`and(A249572(n), A267851(n))`
-/

namespace A250257.P7725466827190339590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267851 n)

end

end A250257.P7725466827190339590

namespace A250257

/-- `and(A249572(n), A267851(n))` -/
def P7725466827190339590.Spec : Prop :=
  ∀ n, P7725466827190339590.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P4378575705798715652

`and(A249572(n), A267888(n))`
-/

namespace A250257.P4378575705798715652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267888 n)

end

end A250257.P4378575705798715652

namespace A250257

/-- `and(A249572(n), A267888(n))` -/
def P4378575705798715652.Spec : Prop :=
  ∀ n, P4378575705798715652.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P5586419861375169521

`and(A249572(n), A267924(n))`
-/

namespace A250257.P5586419861375169521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267924 n)

end

end A250257.P5586419861375169521

namespace A250257

/-- `and(A249572(n), A267924(n))` -/
def P5586419861375169521.Spec : Prop :=
  ∀ n, P5586419861375169521.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P16085852821395469939

`and(A249572(n), A267935(n))`
-/

namespace A250257.P16085852821395469939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267935 n)

end

end A250257.P16085852821395469939

namespace A250257

/-- `and(A249572(n), A267935(n))` -/
def P16085852821395469939.Spec : Prop :=
  ∀ n, P16085852821395469939.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P10412104768294198027

`and(A249572(n), A267941(n))`
-/

namespace A250257.P10412104768294198027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249572 n) (A267941 n)

end

end A250257.P10412104768294198027

namespace A250257

/-- `and(A249572(n), A267941(n))` -/
def P10412104768294198027.Spec : Prop :=
  ∀ n, P10412104768294198027.a n = A250257 (n + 1)

end A250257

/-! ## A250257.P17678603064608097101

`and(A267851(n), A328333(n))`
-/

namespace A250257.P17678603064608097101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267851 n) (A328333 n)

end

end A250257.P17678603064608097101

namespace A250257

/-- `and(A267851(n), A328333(n))` -/
def P17678603064608097101.Spec : Prop :=
  ∀ n, P17678603064608097101.a n = A250257 (n + 1)

end A250257

/-!
# A250258: Least nonnegative integer whose decimal digits divide the plane into n regions (A250257 variant).

The programs for A250258, the canonical program `A250258.P9844340957372090799` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250258 has offset 1).

The definition of A250258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250258.P9844340957372090799

`10*a(n-2)+8` with `a(0)=1, a(1)=0, a(2)=8, a(3)=68`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250258

/-- `10*a(n-2)+8` -/
def P9844340957372090799.Spec : Prop :=
  ∀ n, (P9844340957372090799.a n : ℤ) = A250258 (n + 1)

theorem P9844340957372090799.correct : P9844340957372090799.Spec := by
  intro n
  simp only [A250258, Nat.add_sub_cancel]

end A250258

/-! ## A250258.P9855420571286472218

`(1-char[1])*A250256(n+1)`
-/

namespace A250258.P9855420571286472218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A250256 (n + 1)

end

end A250258.P9855420571286472218

namespace A250258

/-- `(1-char[1])*A250256(n+1)` -/
def P9855420571286472218.Spec : Prop :=
  ∀ n, P9855420571286472218.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P5232758389481141001

`lcm(A081729(n), A250256(n+1))`
-/

namespace A250258.P5232758389481141001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081729 n) (A250256 (n + 1))

end

end A250258.P5232758389481141001

namespace A250258

/-- `lcm(A081729(n), A250256(n+1))` -/
def P5232758389481141001.Spec : Prop :=
  ∀ n, (P5232758389481141001.a n : ℤ) = A250258 (n + 1)

end A250258

/-! ## A250258.P14811621003697278242

`and(A113679(n), A250256(n+1))`
-/

namespace A250258.P14811621003697278242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A250256 (n + 1))

end

end A250258.P14811621003697278242

namespace A250258

/-- `and(A113679(n), A250256(n+1))` -/
def P14811621003697278242.Spec : Prop :=
  ∀ n, P14811621003697278242.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P411405639270206627

`and(A250256(n+1), A378218(n+1))`
-/

namespace A250258.P411405639270206627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250256 (n + 1)) (A378218 (n + 1))

end

end A250258.P411405639270206627

namespace A250258

/-- `and(A250256(n+1), A378218(n+1))` -/
def P411405639270206627.Spec : Prop :=
  ∀ n, P411405639270206627.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P17294710562063515438

`A060576(n)*A250256(n+1)*A060576(n)`
-/

namespace A250258.P17294710562063515438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A250256 (n + 1) * A060576 n

end

end A250258.P17294710562063515438

namespace A250258

/-- `A060576(n)*A250256(n+1)*A060576(n)` -/
def P17294710562063515438.Spec : Prop :=
  ∀ n, P17294710562063515438.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P17452065266896516135

`A250256(n+1)/A249572(n)*A250257(n+1)`
-/

namespace A250258.P17452065266896516135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250256 (n + 1) : ℚ) / (A249572 n : ℚ) * (A250257 (n + 1) : ℚ)

end

end A250258.P17452065266896516135

namespace A250258

/-- `A250256(n+1)/A249572(n)*A250257(n+1)` -/
def P17452065266896516135.Spec : Prop :=
  ∀ n, P17452065266896516135.a n = (A250258 (n + 1) : ℚ)

end A250258

/-! ## A250258.P2443024016926327230

`A250256(n+1)%A083845(n+1)`
-/

namespace A250258.P2443024016926327230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250256 (n + 1)) (A083845 (n + 1))

end

end A250258.P2443024016926327230

namespace A250258

/-- `A250256(n+1)%A083845(n+1)` -/
def P2443024016926327230.Spec : Prop :=
  ∀ n, P2443024016926327230.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P12861263171025471792

`A250256(n+1)%A041058(n)`
-/

namespace A250258.P12861263171025471792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250256 (n + 1)) (A041058 n)

end

end A250258.P12861263171025471792

namespace A250258

/-- `A250256(n+1)%A041058(n)` -/
def P12861263171025471792.Spec : Prop :=
  ∀ n, P12861263171025471792.a n = A250258 (n + 1)

end A250258

/-! ## A250258.P8986164243440750590

`and(A250256(n+1), A267935(n))`
-/

namespace A250258.P8986164243440750590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250256 (n + 1)) (A267935 n)

end

end A250258.P8986164243440750590

namespace A250258

/-- `and(A250256(n+1), A267935(n))` -/
def P8986164243440750590.Spec : Prop :=
  ∀ n, P8986164243440750590.a n = A250258 (n + 1)

end A250258

/-!
# A250259: The number of 4-alternating permutations of [n].

The programs for A250259, there is no canonical definition to state claims against.
-/

/-! ## A250259.P11633941660591127139

`A250261(∑[n+5]+5)`
-/

namespace A250259.P11633941660591127139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A250259.P11633941660591127139

/-! ## A250259.P17347028989687473171

`A250261(A052905(n+2))^A178334(n)`
-/

namespace A250259.P17347028989687473171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250261 (A052905 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A250259.P17347028989687473171

/-! ## A250259.P16905548273247640755

`gcd(A000038(n), A250261(A052905(n+2)))`
-/

namespace A250259.P16905548273247640755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A250261 (A052905 (n + 2)).toNat)

end

end A250259.P16905548273247640755

/-! ## A250259.P7440772158615448154

`A250261(A052905(n+2))+A000038(n+4)`
-/

namespace A250259.P7440772158615448154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A052905 (n + 2)).toNat + A000038 (n + 4)

end

end A250259.P7440772158615448154

/-! ## A250259.P3097040537712682873

`A178334(n+2)*A250261(A052905(n+2))`
-/

namespace A250259.P3097040537712682873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A250261 (A052905 (n + 2)).toNat

end

end A250259.P3097040537712682873

/-! ## A250259.P1766163496001836800

`A062157(2*n+1)*A250261(A052905(n+2))`
-/

namespace A250259.P1766163496001836800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n + 1) * A250261 (A052905 (n + 2)).toNat

end

end A250259.P1766163496001836800

/-! ## A250259.P8213556983106925600

`A033999(2*(n+2))*A250261(A052905(n+2))`
-/

namespace A250259.P8213556983106925600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 2)) * A250261 (A052905 (n + 2)).toNat

end

end A250259.P8213556983106925600

/-!
# A250260: The number of 5-alternating permutations of [n].

The programs for A250260, there is no canonical definition to state claims against.
-/

/-! ## A250260.P14196737448720053039

`A250261(A055999(n+3))`
-/

namespace A250260.P14196737448720053039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A055999 (n + 3)).toNat

end

end A250260.P14196737448720053039

/-! ## A250260.P1503192532665715227

`A250261(eq[5, A025581(n)])`
-/

namespace A250260.P1503192532665715227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250260.P1503192532665715227

/-! ## A250260.P11879724229463072208

`A250261(eq[6, A193739(n)])`
-/

namespace A250260.P11879724229463072208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250260.P11879724229463072208

/-! ## A250260.P243375360326586009

`A250261(Δ[A023551(n+1)])`
-/

namespace A250260.P243375360326586009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (f1 (n + 1) - f1 n).toNat

end

end A250260.P243375360326586009

/-! ## A250260.P2308211267203964415

`A250261(n+3+A027379(n+3))`
-/

namespace A250260.P2308211267203964415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 3)).toNat

end

end A250260.P2308211267203964415

/-! ## A250260.P819066193172860283

`A250261(A000217(n+8)-A005408(n+10))`
-/

namespace A250260.P819066193172860283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 8) - A005408 (n + 10)).toNat

end

end A250260.P819066193172860283

/-!
# A250261: Number A(n,k) of permutations p of [n] such that p(i) > p(i+1) iff i = 1 + k*m for some m >= 0; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A250261, there is no canonical definition to state claims against.
-/

/-! ## A250261.P14886534948220794440

`gcd(A000571(n), A234010(n+1))`
-/

namespace A250261.P14886534948220794440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000571 n) (A234010 (n + 1))

end

end A250261.P14886534948220794440

/-! ## A250261.P7330341976511609243

`A072411(C(3*A203647(n+1), 2))`
-/

namespace A250261.P7330341976511609243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Nat.choose (3 * A203647 (n + 1)).toNat 2)

end

end A250261.P7330341976511609243

/-! ## A250261.P7160685843178649247

`A119338(gcd(n, A355533(3*(n+1))))`
-/

namespace A250261.P7160685843178649247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (Int.gcd (n : ℤ) (A355533 (3 * (n + 1))))

end

end A250261.P7160685843178649247

/-! ## A250261.P9293409055401121110

`A124010(A042948(3*n+4)²+n)`
-/

namespace A250261.P9293409055401121110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A042948 (3 * n + 4) ^ 2 + (n : ℤ)).toNat

end

end A250261.P9293409055401121110

/-! ## A250261.P13312271287876028360

`gcd(A029032(A002262(n)), A164342(n+1))`
-/

namespace A250261.P13312271287876028360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029032 (A002262 n).toNat) (A164342 (n + 1))

end

end A250261.P13312271287876028360

/-!
# A250262: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 6).

The programs for A250262, there is no canonical definition to state claims against.
-/

/-! ## A250262.P7972665986459103470

`A250261(eq[6, A025581(n)])`
-/

namespace A250262.P7972665986459103470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250262.P7972665986459103470

/-! ## A250262.P10389782731167230084

`A250261(A027379(n+5)-4)`
-/

namespace A250262.P10389782731167230084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A027379 (n + 5) - 4).toNat

end

end A250262.P10389782731167230084

/-! ## A250262.P13592007887341328260

`A250261(A055998(n+5)-4)`
-/

namespace A250262.P13592007887341328260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A055998 (n + 5) - 4).toNat

end

end A250262.P13592007887341328260

/-! ## A250262.P2961552027343155186

`A250261(A000217(n+7)-7)`
-/

namespace A250262.P2961552027343155186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 7) - 7).toNat

end

end A250262.P2961552027343155186

/-! ## A250262.P5285144800625742622

`A250261(Δ[A023551(n+2)]-1)`
-/

namespace A250262.P5285144800625742622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (f1 (n + 1) - f1 n - 1).toNat

end

end A250262.P5285144800625742622

/-! ## A250262.P10036417214539778623

`A250261(n+3+A027379(n+4))`
-/

namespace A250262.P10036417214539778623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 4)).toNat

end

end A250262.P10036417214539778623

/-! ## A250262.P16546360010245050158

`A250261(2*n+A246172(n+1)+20)`
-/

namespace A250262.P16546360010245050158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((2 * n : ℤ) + (A246172 (n + 1) + 20)).toNat

end

end A250262.P16546360010245050158

/-!
# A250263: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 7).

The programs for A250263, there is no canonical definition to state claims against.
-/

/-! ## A250263.P2363038667144480132

`A250261(eq[7, A025581(n)])`
-/

namespace A250263.P2363038667144480132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250263.P2363038667144480132

/-! ## A250263.P567871370582590634

`A250261(A000217(n+8)-8)`
-/

namespace A250263.P567871370582590634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 8) - 8).toNat

end

end A250263.P567871370582590634

/-! ## A250263.P14450847972713311461

`A250261(A022856(n+12)-10)`
-/

namespace A250263.P14450847972713311461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A022856 (n + 12) - 10).toNat

end

end A250263.P14450847972713311461

/-! ## A250263.P17036272190772258962

`A250261(eq[8, A004736(n+1)])`
-/

namespace A250263.P17036272190772258962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250263.P17036272190772258962

/-! ## A250263.P13048277528179341353

`A250261(A000096(n+6)+n+1)`
-/

namespace A250263.P13048277528179341353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250263.P13048277528179341353

/-! ## A250263.P13158737024626200733

`A250261(n+3+A027379(n+5))`
-/

namespace A250263.P13158737024626200733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 5)).toNat

end

end A250263.P13158737024626200733

/-! ## A250263.P14086572482379130218

`A250261(2*n+A166136(n+5)+1)`
-/

namespace A250263.P14086572482379130218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A250263.P14086572482379130218

/-! ## A250263.P11254963419432939830

`A250261(2*n+A167614(n+5)+4)`
-/

namespace A250263.P11254963419432939830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((2 * n : ℤ) + (A167614 (n + 5) + 4)).toNat

end

end A250263.P11254963419432939830

/-! ## A250263.P2607596548395984140

`A250261(2*n+A000217(n+6)+7)`
-/

namespace A250263.P2607596548395984140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A250263.P2607596548395984140

/-! ## A250263.P13535889115296018477

`A250261(2*n+A055998(n+4)+10)`
-/

namespace A250263.P13535889115296018477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((2 * n : ℤ) + (A055998 (n + 4) + 10)).toNat

end

end A250263.P13535889115296018477

/-!
# A250264: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 8).

The programs for A250264, there is no canonical definition to state claims against.
-/

/-! ## A250264.P8885438560627721344

`A250261(A000217(n+9)-9)`
-/

namespace A250264.P8885438560627721344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 9) - 9).toNat

end

end A250264.P8885438560627721344

/-! ## A250264.P12758568885756136904

`A250261(A000096(n+7)+n+1)`
-/

namespace A250264.P12758568885756136904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A250264.P12758568885756136904

/-! ## A250264.P1527742443819004256

`A250261(n+3+A027379(n+6))`
-/

namespace A250264.P1527742443819004256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 6)).toNat

end

end A250264.P1527742443819004256

/-! ## A250264.P1686691949413097426

`A250261(eq[7, A002262(n)]+2*n+1)`
-/

namespace A250264.P1686691949413097426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A250264.P1686691949413097426

/-! ## A250264.P16349422620256887583

`A250261(eq[8, A002260(n+1)]+2*n+1)`
-/

namespace A250264.P16349422620256887583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A250264.P16349422620256887583

/-!
# A250265: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 9).

The programs for A250265, there is no canonical definition to state claims against.
-/

/-! ## A250265.P7944381093805976644

`A250261(A056000(n+6))`
-/

namespace A250265.P7944381093805976644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A056000 (n + 6)).toNat

end

end A250265.P7944381093805976644

/-! ## A250265.P15071838504911037030

`A250261(A055999(n+7)-4)`
-/

namespace A250265.P15071838504911037030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A055999 (n + 7) - 4).toNat

end

end A250265.P15071838504911037030

/-! ## A250265.P12437379277932904196

`A250261(A000217(n+10)-10)`
-/

namespace A250265.P12437379277932904196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 10) - 10).toNat

end

end A250265.P12437379277932904196

/-! ## A250265.P3931547042836923486

`A250261(n+3+A027379(n+7))`
-/

namespace A250265.P3931547042836923486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 7)).toNat

end

end A250265.P3931547042836923486

/-! ## A250265.P7645985277871477462

`A250261(A000124(n+9)-(1-n))`
-/

namespace A250265.P7645985277871477462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000124 (n + 9) - (1 - (n : ℤ))).toNat

end

end A250265.P7645985277871477462

/-!
# A250266: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 1 (mod 10).

The programs for A250266, there is no canonical definition to state claims against.
-/

/-! ## A250266.P15926260039456474002

`A250261(A055999(n+8)-5)`
-/

namespace A250266.P15926260039456474002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A055999 (n + 8) - 5).toNat

end

end A250266.P15926260039456474002

/-! ## A250266.P2459312214912660927

`A250261(A000217(n+11)-11)`
-/

namespace A250266.P2459312214912660927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A000217 (n + 11) - 11).toNat

end

end A250266.P2459312214912660927

/-! ## A250266.P10051426201533242765

`A250261(A161680(n+12)-11)`
-/

namespace A250266.P10051426201533242765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A161680 (n + 12) - 11).toNat

end

end A250266.P10051426201533242765

/-! ## A250266.P9835003675734732265

`A250261(n+3+A027379(n+8))`
-/

namespace A250266.P9835003675734732265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 ((n + 3 : ℤ) + A027379 (n + 8)).toNat

end

end A250266.P9835003675734732265

/-! ## A250266.P17524951608983966959

`A250261(A056000(n+6)+n+10)`
-/

namespace A250266.P17524951608983966959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (A056000 (n + 6) + (n + 10 : ℤ)).toNat

end

end A250266.P17524951608983966959

/-!
# A250267: Least of 3 consecutive prime powers in arithmetic progression.

The programs for A250267, there is no canonical definition to state claims against.
-/

/-! ## A250267.P8469583418820138369

`A000961(A376597(n+1))`
-/

namespace A250267.P8469583418820138369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A376597 (n + 1)).toNat

end

end A250267.P8469583418820138369

/-! ## A250267.P1325865964087007675

`A000961(eq[0, Δ[A237709(n+1)]])`
-/

namespace A250267.P1325865964087007675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250267.P1325865964087007675

/-! ## A250267.P16436126281095115230

`record[gcd(A000961(n+1), A184830(n+2))]`
-/

namespace A250267.P16436126281095115230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000961 (n + 1)) (A184830 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250267.P16436126281095115230

/-! ## A250267.P12380469607512021459

`A000961(eq[A237709(n+1), A237709(n+2)])`
-/

namespace A250267.P12380469607512021459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A250267.P12380469607512021459

/-! ## A250267.P14823883251420303780

`A000961(eq[A057820(n+2), A057820(n+1)]+1)`
-/

namespace A250267.P14823883251420303780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A250267.P14823883251420303780

/-!
# A250268: Common differences of consecutive prime powers that form a 3-term arithmetic progression.

The programs for A250268, there is no canonical definition to state claims against.
-/

/-! ## A250268.P5477061193362280677

`A057820(A376597(n+1))`
-/

namespace A250268.P5477061193362280677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A376597 (n + 1)).toNat

end

end A250268.P5477061193362280677

/-! ## A250268.P4770141163715793897

`A188348(A250267(n+1)+A000038(n))`
-/

namespace A250268.P4770141163715793897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (A250267 (n + 1) + A000038 n).toNat

end

end A250268.P4770141163715793897

/-! ## A250268.P16115746595429035316

`A000015(A250267(n+1)+1)-A250267(n+1)`
-/

namespace A250268.P16115746595429035316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A250267 (n + 1) + 1).toNat - A250267 (n + 1)

end

end A250268.P16115746595429035316

/-!
# A250269: Primitive part of n! (for n>=1): n! = Product_{d|n} a(d).

The programs for A250269, there is no canonical definition to state claims against.
-/

/-! ## A250269.P15776139237993859901

`ratio[A003418(n)]*A253901(n+1)`
-/

namespace A250269.P15776139237993859901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A253901 (n + 1) : ℚ)

end

end A250269.P15776139237993859901

/-! ## A250269.P10082061999841696146

`A001783(n+1)*A193679(n+1)`
-/

namespace A250269.P10082061999841696146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1) * A193679 (n + 1)

end

end A250269.P10082061999841696146

/-! ## A250269.P15686761464175162006

`A014963(n+1)*A253901(n+1)`
-/

namespace A250269.P15686761464175162006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A253901 (n + 1)

end

end A250269.P15686761464175162006

/-! ## A250269.P3694738085348475731

`lcm(A001783(n+1), A193679(A000027(n+1)))`
-/

namespace A250269.P3694738085348475731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001783 (n + 1)) (A193679 (A000027 (n + 1)).toNat)

end

end A250269.P3694738085348475731

/-! ## A250269.P2250224285027027166

`A124441(n+1)*A124442(n+1)*A193679(n+1)`
-/

namespace A250269.P2250224285027027166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 (n + 1) * A124442 (n + 1) * A193679 (n + 1)

end

end A250269.P2250224285027027166

/-!
# A250270: Products of terms of A003418.

The programs for A250270, there is no canonical definition to state claims against.
-/

/-! ## A250270.P13360869208929329752

`A025487(lt[A050322(n+1), A249620(2*n)])`
-/

namespace A250270.P13360869208929329752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A250270.P13360869208929329752

/-! ## A250270.P18340458561029829801

`record[A046523(A371286(n+1))]`
-/

namespace A250270.P18340458561029829801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A371286 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250270.P18340458561029829801

/-! ## A250270.P8903317359405398983

`filter[A371286(n+1), A137794(#)]`
-/

namespace A250270.P8903317359405398983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A250270.P8903317359405398983

/-! ## A250270.P11477846212859679589

`filter[A371286(n+1), A322585(#)]`
-/

namespace A250270.P11477846212859679589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A250270.P11477846212859679589

/-! ## A250270.P13572972441648604276

`filter[A371286(n+1), A341629(#)]`
-/

namespace A250270.P13572972441648604276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A250270.P13572972441648604276

/-!
# A250271: Number of length n+1 0..2 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250271, there is no canonical definition to state claims against.
-/

/-! ## A250271.P12169394444893899209

`A250277(∑[n+2])`
-/

namespace A250271.P12169394444893899209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250271.P12169394444893899209

/-! ## A250271.P3095332277394658895

`record[A250277(abs(A201163(n)))]`
-/

namespace A250271.P3095332277394658895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250271.P3095332277394658895

/-! ## A250271.P11914087111678375616

`or(1, A250277(A000096(n+1)))`
-/

namespace A250271.P11914087111678375616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250277 (A000096 (n + 1)).toNat)

end

end A250271.P11914087111678375616

/-! ## A250271.P8631225795996513522

`record[A010054(n+3)*A250277(n+2)]`
-/

namespace A250271.P8631225795996513522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A250277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250271.P8631225795996513522

/-! ## A250271.P4189851750583932993

`A285005(n+1)+A250277(A000096(n+1))`
-/

namespace A250271.P4189851750583932993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285005 (n + 1) + A250277 (A000096 (n + 1)).toNat

end

end A250271.P4189851750583932993

/-!
# A250272: Number of length n+1 0..3 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250272, there is no canonical definition to state claims against.
-/

/-! ## A250272.P9879902058872504703

`A250277(∑[n+3]+1)`
-/

namespace A250272.P9879902058872504703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250272.P9879902058872504703

/-! ## A250272.P2503352572995132542

`lcm(2, A250277(Δ[A008778(n)]))`
-/

namespace A250272.P2503352572995132542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250277 (f1 (n + 1) - f1 n).toNat)

end

end A250272.P2503352572995132542

/-! ## A250272.P18244296162962185551

`lcm(4, A250277(A027379(n+1)+1))`
-/

namespace A250272.P18244296162962185551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A250277 (A027379 (n + 1) + 1).toNat)

end

end A250272.P18244296162962185551

/-! ## A250272.P2815585370568954313

`A250277(Δ[A008778(n)])+A008683(4*(n+1))`
-/

namespace A250272.P2815585370568954313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A250272.P2815585370568954313

/-! ## A250272.P11717819043021165536

`char[A263730(n+2)]*A250277(A034856(n+2))`
-/

namespace A250272.P11717819043021165536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250277 (A034856 (n + 2)).toNat

end

end A250272.P11717819043021165536

/-!
# A250273: Number of length n+1 0..4 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250273, there is no canonical definition to state claims against.
-/

/-! ## A250273.P16773141541897398316

`A250277(∑[n+4]+3)`
-/

namespace A250273.P16773141541897398316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250273.P16773141541897398316

/-! ## A250273.P13343891192679074368

`or(1, A250277(A141214(n+1)))`
-/

namespace A250273.P13343891192679074368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250277 (A141214 (n + 1)).toNat)

end

end A250273.P13343891192679074368

/-! ## A250273.P1342643987489096297

`record[A250277(eq[3, A322426(n+2)])]`
-/

namespace A250273.P1342643987489096297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250273.P1342643987489096297

/-! ## A250273.P6842537400828489919

`A250277(A141214(n+1))+A025438(n)`
-/

namespace A250273.P6842537400828489919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A141214 (n + 1)).toNat + A025438 n

end

end A250273.P6842537400828489919

/-! ## A250273.P9978659336986499019

`A250277(A141214(n+1))%A022035(n)`
-/

namespace A250273.P9978659336986499019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250277 (A141214 (n + 1)).toNat) (A022035 n)

end

end A250273.P9978659336986499019

/-!
# A250274: Number of length n+1 0..5 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250274, there is no canonical definition to state claims against.
-/

/-! ## A250274.P11335520249447190165

`A250277(Δ[A264443(n)])`
-/

namespace A250274.P11335520249447190165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (f1 (n + 1) - f1 n).toNat

end

end A250274.P11335520249447190165

/-! ## A250274.P9359408775591574205

`A250277(A046691(n+3))`
-/

namespace A250274.P9359408775591574205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A046691 (n + 3)).toNat

end

end A250274.P9359408775591574205

/-! ## A250274.P8235178558734350842

`A250277(A056115(n)+11)`
-/

namespace A250274.P8235178558734350842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A056115 n + 11).toNat

end

end A250274.P8235178558734350842

/-! ## A250274.P7747703794591160865

`A250277(eq[2, A092921(n)])`
-/

namespace A250274.P7747703794591160865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250274.P7747703794591160865

/-! ## A250274.P8666064476832750344

`A250277(eq[3, A152157(n)])`
-/

namespace A250274.P8666064476832750344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250274.P8666064476832750344

/-!
# A250275: Number of length n+1 0..6 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250275, there is no canonical definition to state claims against.
-/

/-! ## A250275.P18322923047871919195

`A250277(A052905(n+3))`
-/

namespace A250275.P18322923047871919195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A052905 (n + 3)).toNat

end

end A250275.P18322923047871919195

/-! ## A250275.P1676159593774336665

`A250277(A056119(n)+16)`
-/

namespace A250275.P1676159593774336665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A056119 n + 16).toNat

end

end A250275.P1676159593774336665

/-! ## A250275.P5185557438775279103

`A250277(eq[3, A219347(n)])`
-/

namespace A250275.P5185557438775279103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250275.P5185557438775279103

/-! ## A250275.P17514926809604682610

`A250277(eq[5, A193592(n)])`
-/

namespace A250275.P17514926809604682610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250275.P17514926809604682610

/-! ## A250275.P10041872324927905867

`A250277(eq[8, A258709(n)])`
-/

namespace A250275.P10041872324927905867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250275.P10041872324927905867

/-!
# A250276: Number of length n+1 0..7 arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250276, there is no canonical definition to state claims against.
-/

/-! ## A250276.P16430855008627775112

`A250277(A055999(n+4))`
-/

namespace A250276.P16430855008627775112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A055999 (n + 4)).toNat

end

end A250276.P16430855008627775112

/-! ## A250276.P11460024116657685054

`A250277(eq[4, A219347(n)])`
-/

namespace A250276.P11460024116657685054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250276.P11460024116657685054

/-! ## A250276.P10640536449893345770

`A250277(eq[6, A193592(n)])`
-/

namespace A250276.P10640536449893345770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250276.P10640536449893345770

/-! ## A250276.P14059700564032434061

`A250277(Δ[A023551(n+2)])`
-/

namespace A250276.P14059700564032434061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (f1 (n + 1) - f1 n).toNat

end

end A250276.P14059700564032434061

/-! ## A250276.P6223212577018079214

`A250277(A155212(n+3)+2)`
-/

namespace A250276.P6223212577018079214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A155212 (n + 3) + 2).toNat

end

end A250276.P6223212577018079214

/-!
# A250278: Number of length 3+1 0..n arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250278, there is no canonical definition to state claims against.
-/

/-! ## A250278.P1220591594125852408

`A250277(∑[n+2]+4)`
-/

namespace A250278.P1220591594125852408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250278.P1220591594125852408

/-! ## A250278.P16896756223947353064

`or(char[1], A250277(A167614(n+1)))`
-/

namespace A250278.P16896756223947353064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250277 (A167614 (n + 1)).toNat)

end

end A250278.P16896756223947353064

/-! ## A250278.P6658099432307714093

`record[A250277(A250252(2*(n+2))+2)]`
-/

namespace A250278.P6658099432307714093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A250252 (2 * (n + 2)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250278.P6658099432307714093

/-! ## A250278.P9446721550851922295

`A250277(A133263(n+2)+1)+char[18]`
-/

namespace A250278.P9446721550851922295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A133263 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250278.P9446721550851922295

/-! ## A250278.P49601942388938126

`A250277(A167614(n+1))+A025438(n)`
-/

namespace A250278.P49601942388938126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A167614 (n + 1)).toNat + A025438 n

end

end A250278.P49601942388938126

/-!
# A250279: Number of length 4+1 0..n arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250279, there is no canonical definition to state claims against.
-/

/-! ## A250279.P11508857832460644665

`A250277(∑[n+3]+7)`
-/

namespace A250279.P11508857832460644665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250279.P11508857832460644665

/-! ## A250279.P2936411443157260730

`A250277(A000217(n+3)+4)+char[18]`
-/

namespace A250279.P2936411443157260730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250279.P2936411443157260730

/-! ## A250279.P16260905212112361223

`A250277(A000096(n+2)+5)+char[20]`
-/

namespace A250279.P16260905212112361223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250279.P16260905212112361223

/-! ## A250279.P416513811727984875

`∑{d}[A250277(A000096(n+2)+5), A000010(#)]`
-/

namespace A250279.P416513811727984875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000096 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A250279.P416513811727984875

/-! ## A250279.P4062046929805252990

`∏{d}[A250277(A000096(n+2)+5), A014963(#)]`
-/

namespace A250279.P4062046929805252990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000096 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A250279.P4062046929805252990

/-!
# A250280: Number of length 5+1 0..n arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250280, there is no canonical definition to state claims against.
-/

/-! ## A250280.P12436009890683874484

`A250277(A167499(n+3))`
-/

namespace A250280.P12436009890683874484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A167499 (n + 3)).toNat

end

end A250280.P12436009890683874484

/-! ## A250280.P12427570216945282054

`A250277(A155212(n)+13)`
-/

namespace A250280.P12427570216945282054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A155212 n + 13).toNat

end

end A250280.P12427570216945282054

/-! ## A250280.P14393108930619148891

`A250277(A056000(n)+15)`
-/

namespace A250280.P14393108930619148891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A056000 n + 15).toNat

end

end A250280.P14393108930619148891

/-! ## A250280.P11053888630208326849

`A250277(eq[7, A066657(n)])`
-/

namespace A250280.P11053888630208326849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250280.P11053888630208326849

/-! ## A250280.P10054029497614527378

`A250277(A166136(n+3)-1)`
-/

namespace A250280.P10054029497614527378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A166136 (n + 3) - 1).toNat

end

end A250280.P10054029497614527378

/-!
# A250281: Number of length 6+1 0..n arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250281, there is no canonical definition to state claims against.
-/

/-! ## A250281.P6163155194764398737

`A250277(A166136(n+4))`
-/

namespace A250281.P6163155194764398737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A166136 (n + 4)).toNat

end

end A250281.P6163155194764398737

/-! ## A250281.P8675856278501077999

`A250277(A056115(n)+21)`
-/

namespace A250281.P8675856278501077999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A056115 n + 21).toNat

end

end A250281.P8675856278501077999

/-! ## A250281.P7705285216130663634

`A250277(A000124(n+5)+5)`
-/

namespace A250281.P7705285216130663634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000124 (n + 5) + 5).toNat

end

end A250281.P7705285216130663634

/-! ## A250281.P5221947608547999383

`A250277(A000096(n+4)+7)`
-/

namespace A250281.P5221947608547999383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000096 (n + 4) + 7).toNat

end

end A250281.P5221947608547999383

/-! ## A250281.P8362540949310671999

`A250277(A000217(n+5)+6)`
-/

namespace A250281.P8362540949310671999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000217 (n + 5) + 6).toNat

end

end A250281.P8362540949310671999

/-!
# A250282: Number of length 7+1 0..n arrays with the sum of the squares of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250282, there is no canonical definition to state claims against.
-/

/-! ## A250282.P5343388441029212450

`A250277(A056119(n)+28)`
-/

namespace A250282.P5343388441029212450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A056119 n + 28).toNat

end

end A250282.P5343388441029212450

/-! ## A250282.P4263827006054045375

`A250277(eq[11, A066657(n)])`
-/

namespace A250282.P4263827006054045375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250282.P4263827006054045375

/-! ## A250282.P17974877703583052064

`A250277(A133263(n+6)+5)`
-/

namespace A250282.P17974877703583052064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A133263 (n + 6) + 5).toNat

end

end A250282.P17974877703583052064

/-! ## A250282.P12812557592882726573

`A250277(A000124(n+6)+6)`
-/

namespace A250282.P12812557592882726573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000124 (n + 6) + 6).toNat

end

end A250282.P12812557592882726573

/-! ## A250282.P12574648837899584361

`A250277(A000096(n+5)+8)`
-/

namespace A250282.P12574648837899584361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (A000096 (n + 5) + 8).toNat

end

end A250282.P12574648837899584361

/-!
# A250283: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 0 (mod 6).

The programs for A250283, there is no canonical definition to state claims against.
-/

/-! ## A250283.P16262796706446177791

`A181937(A052905(n+2))`
-/

namespace A250283.P16262796706446177791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A052905 (n + 2)).toNat

end

end A250283.P16262796706446177791

/-! ## A250283.P7933913326771054153

`A181937(eq[4, A025581(n)])`
-/

namespace A250283.P7933913326771054153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250283.P7933913326771054153

/-! ## A250283.P3601254824728444540

`A181937(eq[9, A099375(n)])`
-/

namespace A250283.P3601254824728444540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250283.P3601254824728444540

/-! ## A250283.P12439256151004496093

`A181937(Δ[A264443(n)]-1)`
-/

namespace A250283.P12439256151004496093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (f1 (n + 1) - f1 n - 1).toNat

end

end A250283.P12439256151004496093

/-! ## A250283.P17528745284197514661

`A181937(A055999(n+2)+1)`
-/

namespace A250283.P17528745284197514661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A055999 (n + 2) + 1).toNat

end

end A250283.P17528745284197514661

/-! ## A250283.P16745768622982818675

`A181937(A155212(n+1)+3)`
-/

namespace A250283.P16745768622982818675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A155212 (n + 1) + 3).toNat

end

end A250283.P16745768622982818675

/-! ## A250283.P3427818174164632693

`A181937(eq[5, A004736(n+1)])`
-/

namespace A250283.P3427818174164632693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250283.P3427818174164632693

/-! ## A250283.P16800346766358536816

`A181937(Δ[A023545(n+1)]-1)`
-/

namespace A250283.P16800346766358536816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (f1 (n + 1) - f1 n - 1).toNat

end

end A250283.P16800346766358536816

/-!
# A250284: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 0 (mod 7).

The programs for A250284, there is no canonical definition to state claims against.
-/

/-! ## A250284.P7447520339692122541

`A181937(A055999(n+3))`
-/

namespace A250284.P7447520339692122541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A055999 (n + 3)).toNat

end

end A250284.P7447520339692122541

/-! ## A250284.P5533561266669036345

`A181937(eq[5, A025581(n)])`
-/

namespace A250284.P5533561266669036345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250284.P5533561266669036345

/-! ## A250284.P2410855471626005858

`A181937(eq[11, A099375(n)])`
-/

namespace A250284.P2410855471626005858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250284.P2410855471626005858

/-! ## A250284.P18396982226193863495

`A181937(A052905(n+3)-1)`
-/

namespace A250284.P18396982226193863495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A052905 (n + 3) - 1).toNat

end

end A250284.P18396982226193863495

/-! ## A250284.P11792226829968090859

`A181937(eq[6, A004736(n+1)])`
-/

namespace A250284.P11792226829968090859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250284.P11792226829968090859

/-! ## A250284.P18146781775453168801

`A181937(2*n+A000217(n+4)+5)`
-/

namespace A250284.P18146781775453168801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A250284.P18146781775453168801

/-! ## A250284.P15943798618346052748

`A181937(A007401(Δ[A264443(n)]))`
-/

namespace A250284.P15943798618346052748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250284.P15943798618346052748

/-! ## A250284.P2708746356437387159

`A181937(Δ[A264443(n)+A052905(n)])`
-/

namespace A250284.P2708746356437387159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (f1 (n + 1) - f1 n).toNat

end

end A250284.P2708746356437387159

/-!
# A250285: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 0 (mod 8).

The programs for A250285, there is no canonical definition to state claims against.
-/

/-! ## A250285.P823072914270314114

`A181937(C(n+7, 2)+n)`
-/

namespace A250285.P823072914270314114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (Nat.choose (n + 7) 2 + n)

end

end A250285.P823072914270314114

/-! ## A250285.P1759722358666522401

`A181937(eq[6, A025581(n)])`
-/

namespace A250285.P1759722358666522401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250285.P1759722358666522401

/-! ## A250285.P11145192672367496247

`A181937(A055999(n+4)-1)`
-/

namespace A250285.P11145192672367496247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A055999 (n + 4) - 1).toNat

end

end A250285.P11145192672367496247

/-! ## A250285.P424852702245110941

`A181937(Δ[A264443(n+1)+A052905(n)])`
-/

namespace A250285.P424852702245110941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1) + A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (f1 (n + 1) - f1 n).toNat

end

end A250285.P424852702245110941

/-! ## A250285.P11157173032713048641

`A181937(Δ[A264443(n+1)+A055999(n)])`
-/

namespace A250285.P11157173032713048641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1) + A055999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (f1 (n + 1) - f1 n).toNat

end

end A250285.P11157173032713048641

/-!
# A250286: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 0 (mod 9).

The programs for A250286, there is no canonical definition to state claims against.
-/

/-! ## A250286.P2095208365886714207

`A181937(eq[7, A025581(n)])`
-/

namespace A250286.P2095208365886714207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250286.P2095208365886714207

/-! ## A250286.P942391544630262022

`A181937(A000217(n+8)-8)`
-/

namespace A250286.P942391544630262022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A000217 (n + 8) - 8).toNat

end

end A250286.P942391544630262022

/-! ## A250286.P14813462283581852412

`A181937(eq[8, A004736(n+1)])`
-/

namespace A250286.P14813462283581852412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250286.P14813462283581852412

/-! ## A250286.P1842768778313807154

`A181937(A014206(n+11)-A000124(n+14))`
-/

namespace A250286.P1842768778313807154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A014206 (n + 11) - A000124 (n + 14)).toNat

end

end A250286.P1842768778313807154

/-! ## A250286.P3123803704433431396

`A128936(n)-A245793(A027828(n))`
-/

namespace A250286.P3123803704433431396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n - A245793 (A027828 n).toNat

end

end A250286.P3123803704433431396

/-!
# A250287: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 0 (mod 10).

The programs for A250287, there is no canonical definition to state claims against.
-/

/-! ## A250287.P16736461978850235377

`A181937(A000124(n+11)-A005408(n+15))`
-/

namespace A250287.P16736461978850235377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A000124 (n + 11) - A005408 (n + 15)).toNat

end

end A250287.P16736461978850235377

/-! ## A250287.P3302913255193606308

`floor(sqrt((2-A304776(C(n, 10)+1))²+1))`
-/

namespace A250287.P3302913255193606308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((2 - A304776 (Nat.choose n 10 + 1)) ^ 2 + 1)

end

end A250287.P3302913255193606308

/-! ## A250287.P7554747627012098837

`A171950(C(n, 10)+1)`
-/

namespace A250287.P7554747627012098837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (Nat.choose n 10 + 1)

end

end A250287.P7554747627012098837

/-! ## A250287.P17437447099096166657

`A289207(C(n, 10))+1`
-/

namespace A250287.P17437447099096166657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Nat.choose n 10) + 1

end

end A250287.P17437447099096166657

/-! ## A250287.P6672284696745296669

`A171950(A212389(n))`
-/

namespace A250287.P6672284696745296669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A212389 n).toNat

end

end A250287.P6672284696745296669

/-!
# A250288: Numbers n such that the duodecimal repunit (12^n - 1)/11 is a semiprime.

The programs for A250288, there is no canonical definition to state claims against.
-/

/-! ## A250288.P5587895978691259965

`eq[3, A366708(n+1)]+1`
-/

namespace A250288.P5587895978691259965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250288.P5587895978691259965

/-! ## A250288.P17727216345497936218

`A065475(eq[3, A366708(n+1)])`
-/

namespace A250288.P17727216345497936218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250288.P17727216345497936218

/-! ## A250288.P2699441263158213777

`A065475(eq[8, A366709(n+1)])`
-/

namespace A250288.P2699441263158213777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250288.P2699441263158213777

/-!
# A250289: Numbers n such that the numerator of Bernoulli(n) (A027641(n)) is a semiprime.

The programs for A250289, there is no canonical definition to state claims against.
-/

/-! ## A250289.P4377823990254849072

`2*eq[2, A079294(n)]`
-/

namespace A250289.P4377823990254849072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250289.P4377823990254849072

/-! ## A250289.P6335899385544526309

`A004277(eq[2, A079294(n)])`
-/

namespace A250289.P6335899385544526309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250289.P6335899385544526309

/-! ## A250289.P2739610742644806189

`A005843(eq[2, A079294(n)])`
-/

namespace A250289.P2739610742644806189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250289.P2739610742644806189

/-! ## A250289.P8826090376068068999

`eq[2, A079294(A142150(n))]`
-/

namespace A250289.P8826090376068068999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250289.P8826090376068068999

/-! ## A250289.P12247953422578628940

`A163300(eq[2, A079294(n)])`
-/

namespace A250289.P12247953422578628940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250289.P12247953422578628940

/-!
# A250291: Numbers k such that (2^k+1)/3 is a semiprime.

The programs for A250291, there is no canonical definition to state claims against.
-/

/-! ## A250291.P12502322466609518607

`eq[3, A046799(A091685(n))]`
-/

namespace A250291.P12502322466609518607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A091685 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250291.P12502322466609518607

/-! ## A250291.P10297741586431137223

`eq[3, A054992(A093178(n))]`
-/

namespace A250291.P10297741586431137223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250291.P10297741586431137223

/-! ## A250291.P809765255128589523

`eq[A040936(n), A046798(n)]`
-/

namespace A250291.P809765255128589523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250291.P809765255128589523

/-! ## A250291.P17151680476674162671

`A005408(eq[3, A054992(A005408(n))])`
-/

namespace A250291.P17151680476674162671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250291.P17151680476674162671

/-! ## A250291.P3620082546855695787

`∩[2*n+1, A363837(n+1)]`
-/

namespace A250291.P3620082546855695787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250291.P3620082546855695787

/-!
# A250292: Numbers k such that Pell(k) is a semiprime.

The programs for A250292, there is no canonical definition to state claims against.
-/

/-! ## A250292.P18099238002361341083

`eq[2, A363833(n+1)]+1`
-/

namespace A250292.P18099238002361341083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250292.P18099238002361341083

/-! ## A250292.P18410274721971241022

`eq[2, A363833(n^(n%2))]`
-/

namespace A250292.P18410274721971241022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363833 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250292.P18410274721971241022

/-!
# A250293: Primes p such that p#+1 is a semiprime, where # is the primorial (A034386).

The programs for A250293, there is no canonical definition to state claims against.
-/

/-! ## A250293.P16263482716831312182

`A000040(A085725(n+1))`
-/

namespace A250293.P16263482716831312182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085725 (n + 1)).toNat

end

end A250293.P16263482716831312182

/-! ## A250293.P7955503683301819182

`A008578(A085725(n+1)+1)`
-/

namespace A250293.P7955503683301819182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085725 (n + 1) + 1).toNat

end

end A250293.P7955503683301819182

/-! ## A250293.P17612573516226742519

`A182986(A085725(n+1)+1)`
-/

namespace A250293.P17612573516226742519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A085725 (n + 1) + 1).toNat

end

end A250293.P17612573516226742519

/-! ## A250293.P14789956850930787898

`A045319(A085725(n+1)-1)`
-/

namespace A250293.P14789956850930787898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A085725 (n + 1) - 1).toNat

end

end A250293.P14789956850930787898

/-! ## A250293.P1548553002707595311

`A045344(A085725(n+1)-1)`
-/

namespace A250293.P1548553002707595311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A085725 (n + 1) - 1).toNat

end

end A250293.P1548553002707595311

/-!
# A250294: Primes p such that p#-1 is a semiprime, where # is the primorial (A034386).

The programs for A250294, there is no canonical definition to state claims against.
-/

/-! ## A250294.P14635842239551096695

`A000040(A364840(n+1))`
-/

namespace A250294.P14635842239551096695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A364840 (n + 1)).toNat

end

end A250294.P14635842239551096695

/-! ## A250294.P18187337876500599816

`A045319(eq[2, A054989(n+1)])`
-/

namespace A250294.P18187337876500599816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250294.P18187337876500599816

/-! ## A250294.P49067360319945143

`A045344(eq[2, A054989(n+1)])`
-/

namespace A250294.P49067360319945143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250294.P49067360319945143

/-! ## A250294.P4727931323526431895

`A065091(eq[2, A054989(n+1)])`
-/

namespace A250294.P4727931323526431895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250294.P4727931323526431895

/-! ## A250294.P17156764891087078679

`A000040(eq[2, A054989(n+1)]+1)`
-/

namespace A250294.P17156764891087078679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250294.P17156764891087078679

/-!
# A250296: Number n such that A057137(n) is a semiprime.

The programs for A250296, there is no canonical definition to state claims against.
-/

/-! ## A250296.P7941787848845140868

`A360371(A005852(2*n+7)+A000040(n+1))`
-/

namespace A250296.P7941787848845140868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360371 (A005852 (2 * n + 7) + A000040 (n + 1)).toNat

end

end A250296.P7941787848845140868

/-!
# A250298: Primes p such that the largest integer m such that both m and m-1 factor into primes less than or equal to p is a perfect square, m = k^2.

The programs for A250298, there is no canonical definition to state claims against.
-/

/-! ## A250298.P13821719298261093073

`record[p?[A030555(2*n+1)]]`
-/

namespace A250298.P13821719298261093073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030555 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250298.P13821719298261093073

/-! ## A250298.P6264629973312713778

`A087821(∑[∏{p}[n+1, #]]-1)`
-/

namespace A250298.P6264629973312713778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087821 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A250298.P6264629973312713778

/-! ## A250298.P17091762327334196517

`A000040(∑[n*a(n-3)]+(n%3)!)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A250298.P17091762327334196517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  n * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (n % 3))

end

end A250298.P17091762327334196517

/-!
# A250299: Parity of A098550.

The programs for A250299, there is no canonical definition to state claims against.
-/

/-! ## A250299.P15134868421413902835

`A000035(A098550(n+1))`
-/

namespace A250299.P15134868421413902835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A098550 (n + 1)).toNat

end

end A250299.P15134868421413902835

/-! ## A250299.P5679271253802139013

`A251089(n+1)%2`
-/

namespace A250299.P5679271253802139013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251089 (n + 1)) 2

end

end A250299.P5679271253802139013

/-! ## A250299.P11773349912067596242

`A251101(n+1)%2`
-/

namespace A250299.P11773349912067596242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251101 (n + 1)) 2

end

end A250299.P11773349912067596242

/-! ## A250299.P8056301393832125762

`char[A251238(n+1)-1]`
-/

namespace A250299.P8056301393832125762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A250299.P8056301393832125762

/-! ## A250299.P13898844039735703028

`A000035(A251101(n+1))`
-/

namespace A250299.P13898844039735703028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A251101 (n + 1)).toNat

end

end A250299.P13898844039735703028

/-! ## A250299.P13127169792043095256

`A035263(A251089(n+1))`
-/

namespace A250299.P13127169792043095256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A251089 (n + 1)).toNat

end

end A250299.P13127169792043095256

/-! ## A250299.P6976992450386743744

`and(A060576(n), A098550(n+1))`
-/

namespace A250299.P6976992450386743744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A098550 (n + 1))

end

end A250299.P6976992450386743744

/-! ## A250299.P481666875347216707

`and(A098550(n+1), A158388(n))`
-/

namespace A250299.P481666875347216707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098550 (n + 1)) (A158388 n)

end

end A250299.P481666875347216707

/-! ## A250299.P10178636962533545998

`A158478(A251101(n+1)+2)-2`
-/

namespace A250299.P10178636962533545998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A251101 (n + 1) + 2).toNat - 2

end

end A250299.P10178636962533545998

/-! ## A250299.P13040568747709398183

`1-A034178(2*A251101(n+1))`
-/

namespace A250299.P13040568747709398183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A034178 (2 * A251101 (n + 1)).toNat

end

end A250299.P13040568747709398183

/-! ## A250299.P16002560873835937333

`and(1, (A008514(n)*A251101(n+1))²)`
-/

namespace A250299.P16002560873835937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A008514 n * A251101 (n + 1)) ^ 2)

end

end A250299.P16002560873835937333

/-! ## A250299.P12776996724822003412

`and(1, A251101(n+1)²*A016950(n))`
-/

namespace A250299.P12776996724822003412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A251101 (n + 1) ^ 2 * A016950 n)

end

end A250299.P12776996724822003412

/-! ## A250299.P1713554134061763673

`and(A010060(A246158(n+1)), A098550(n+1))`
-/

namespace A250299.P1713554134061763673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A246158 (n + 1)).toNat) (A098550 (n + 1))

end

end A250299.P1713554134061763673

/-! ## A250299.P9407722873695064179

`2-A336643(2*A251089(n+1))`
-/

namespace A250299.P9407722873695064179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A336643 (2 * A251089 (n + 1)).toNat

end

end A250299.P9407722873695064179

/-! ## A250299.P8986867693245550666

`A098552(A098551(n+1))%2`
-/

namespace A250299.P8986867693245550666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098552 (A098551 (n + 1)).toNat) 2

end

end A250299.P8986867693245550666

/-! ## A250299.P15565462604607820361

`A000035(A251089(n+1)+2)`
-/

namespace A250299.P15565462604607820361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A251089 (n + 1) + 2).toNat

end

end A250299.P15565462604607820361

/-! ## A250299.P13551086474606407853

`A158478(A098550(n+1)+2)-2`
-/

namespace A250299.P13551086474606407853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A098550 (n + 1) + 2).toNat - 2

end

end A250299.P13551086474606407853

/-! ## A250299.P5405171105744522123

`and(A098550(n+1), A176794(n))`
-/

namespace A250299.P5405171105744522123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098550 (n + 1)) (A176794 n)

end

end A250299.P5405171105744522123

/-! ## A250299.P16657939791666002732

`2-A000188(2*A251089(n+1))`
-/

namespace A250299.P16657939791666002732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000188 (2 * A251089 (n + 1)).toNat

end

end A250299.P16657939791666002732

/-! ## A250299.P2770815804276360772

`and(A048578(n), A098550(n+1))`
-/

namespace A250299.P2770815804276360772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A098550 (n + 1))

end

end A250299.P2770815804276360772

