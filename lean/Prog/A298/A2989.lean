import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A298900: Number of nX6 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298900, there is no canonical definition to state claims against.
-/

/-! ## A298900.P6100716955169248821

`A298902(A374007(n+1))`
-/

namespace A298900.P6100716955169248821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A374007 (n + 1)).toNat

end

end A298900.P6100716955169248821

/-! ## A298900.P18399309353839819464

`A298902(A056115(n)+21)`
-/

namespace A298900.P18399309353839819464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A056115 n + 21).toNat

end

end A298900.P18399309353839819464

/-! ## A298900.P298728534110223479

`A298902(A167499(n+4)+1)`
-/

namespace A298900.P298728534110223479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A167499 (n + 4) + 1).toNat

end

end A298900.P298728534110223479

/-! ## A298900.P13307715475035923168

`A298902(A167614(n+4)+3)`
-/

namespace A298900.P13307715475035923168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A167614 (n + 4) + 3).toNat

end

end A298900.P13307715475035923168

/-! ## A298900.P2690154401174288766

`A298902(A000124(n+5)+5)`
-/

namespace A298900.P2690154401174288766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A000124 (n + 5) + 5).toNat

end

end A298900.P2690154401174288766

/-!
# A298901: Number of nX7 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298901, there is no canonical definition to state claims against.
-/

/-! ## A298901.P13579647037397739426

`A298902(A374008(n+1))`
-/

namespace A298901.P13579647037397739426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A374008 (n + 1)).toNat

end

end A298901.P13579647037397739426

/-! ## A298901.P4071435670561102805

`A298902(A056119(n)+28)`
-/

namespace A298901.P4071435670561102805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A056119 n + 28).toNat

end

end A298901.P4071435670561102805

/-! ## A298901.P3936748129025956241

`A298902(eq[11, A066657(n)])`
-/

namespace A298901.P3936748129025956241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298901.P3936748129025956241

/-! ## A298901.P612520844371753919

`A298902(A167499(n+5)+2)`
-/

namespace A298901.P612520844371753919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A167499 (n + 5) + 2).toNat

end

end A298901.P612520844371753919

/-! ## A298901.P2014046720362374513

`A298902(A000124(n+6)+6)`
-/

namespace A298901.P2014046720362374513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (A000124 (n + 6) + 6).toNat

end

end A298901.P2014046720362374513

/-!
# A298902: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298902, there is no canonical definition to state claims against.
-/

/-! ## A298902.P8189174562838871955

`A180760(n+1)%A034836(A003593(n+1))`
-/

namespace A298902.P8189174562838871955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180760 (n + 1)) (A034836 (A003593 (n + 1)).toNat)

end

end A298902.P8189174562838871955

/-! ## A298902.P13969934452590897162

`and(A062241(n), A098356(n))`
-/

namespace A298902.P13969934452590897162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062241 n) (A098356 n)

end

end A298902.P13969934452590897162

/-! ## A298902.P5300367909290269436

`A098356(and(n, A127581(n)))`
-/

namespace A298902.P5300367909290269436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (Int.land (n : ℤ) (A127581 n)).toNat

end

end A298902.P5300367909290269436

/-! ## A298902.P385449355716572567

`and(A098356(n), A344776(n))`
-/

namespace A298902.P385449355716572567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098356 n) (A344776 n)

end

end A298902.P385449355716572567

/-! ## A298902.P2601400017074356938

`A098356(n)%record[A098376(n)]`
-/

namespace A298902.P2601400017074356938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098356 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A298902.P2601400017074356938

/-!
# A298903: Determinant of n X n matrix whose elements are m(i,j) = prime(i+j)-prime(i).

The programs for A298903, there is no canonical definition to state claims against.
-/

/-! ## A298903.P12106688652768110677

`A123956(A212686(n)+1)`
-/

namespace A298903.P12106688652768110677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123956 (A212686 n + 1).toNat

end

end A298903.P12106688652768110677

/-! ## A298903.P12035415847977565468

`A123956(or(1, A212686(n)))`
-/

namespace A298903.P12035415847977565468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123956 (Int.lor 1 (A212686 n)).toNat

end

end A298903.P12035415847977565468

/-!
# A298905: Expansion of e.g.f. Product_{k>=1} (1 + log(1 + x)^k).

The programs for A298905, there is no canonical definition to state claims against.
-/

/-! ## A298905.P4675832407658912195

`A357864(A124504(n))-A117337(n)`
-/

namespace A298905.P4675832407658912195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (A124504 n).toNat - A117337 n

end

end A298905.P4675832407658912195

/-! ## A298905.P3368791620398698197

`A163984(A011782(n)^A057944(n))`
-/

namespace A298905.P3368791620398698197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163984 (SequenceMachineLib.roundAway ((A011782 n : ℚ) ^ (A057944 n : ℤ))).toNat

end

end A298905.P3368791620398698197

/-!
# A298907: Primitive cyclic quadrilaterals with integer area.

The programs for A298907, there is no canonical definition to state claims against.
-/

/-! ## A298907.P10213734066107829088

`A298860(A047227(n+1))`
-/

namespace A298907.P10213734066107829088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A047227 (n + 1)).toNat

end

end A298907.P10213734066107829088

/-! ## A298907.P2692870529581260153

`A298860(A047246(n+1)+1)`
-/

namespace A298907.P2692870529581260153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A047246 (n + 1) + 1).toNat

end

end A298907.P2692870529581260153

/-! ## A298907.P12028813441260086031

`A298860(A047247(n+1)-1)`
-/

namespace A298907.P12028813441260086031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A047247 (n + 1) - 1).toNat

end

end A298907.P12028813441260086031

/-! ## A298907.P4800327548921370551

`A298860(A047613(n+1)-floor(n/2))`
-/

namespace A298907.P4800327548921370551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A047613 (n + 1) - ⌊(n : ℚ) / 2⌋).toNat

end

end A298907.P4800327548921370551

/-! ## A298907.P11520825949007596225

`A298860(A008621(n)+A001068(n))`
-/

namespace A298907.P11520825949007596225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A008621 n + A001068 n).toNat

end

end A298907.P11520825949007596225

/-! ## A298907.P11111620236502564606

`A298860(A080412(n)+A028242(n))`
-/

namespace A298907.P11111620236502564606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298860 (A080412 n + A028242 n).toNat

end

end A298907.P11111620236502564606

/-!
# A298909: Numbers m such that there are precisely 18 groups of order m.

The programs for A298909, there is no canonical definition to state claims against.
-/

/-! ## A298909.P804555867501716019

`eq[18, A000001(n)]`
-/

namespace A298909.P804555867501716019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298909.P804555867501716019

/-! ## A298909.P1753917556720602448

`eq[18, sqrt(A297420(n))]`
-/

namespace A298909.P1753917556720602448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A298909.P1753917556720602448

/-!
# A298912: Numbers n such that the number of groups of order n equals the number of groups of order n + 1.

The programs for A298912, there is no canonical definition to state claims against.
-/

/-! ## A298912.P15470487749843662112

`eq[0, A298739(n+1)]+1`
-/

namespace A298912.P15470487749843662112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298912.P15470487749843662112

/-! ## A298912.P8385490522155697527

`eq[A000001(n+1), A000001(n)]`
-/

namespace A298912.P8385490522155697527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298912.P8385490522155697527

/-! ## A298912.P15252834703619076212

`eq[A297420(n+1), A297420(n)]`
-/

namespace A298912.P15252834703619076212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298912.P15252834703619076212

/-! ## A298912.P6523743758879751729

`eq[A000007(n), A298739(A028310(n))]`
-/

namespace A298912.P6523743758879751729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298739 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298912.P6523743758879751729

/-! ## A298912.P8693903902932932061

`eq[A000038(n), A298739(A028310(n))]`
-/

namespace A298912.P8693903902932932061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298739 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298912.P8693903902932932061

/-!
# A298913: Number of n X n 0..1 arrays with every element equal to 0, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298913, there is no canonical definition to state claims against.
-/

/-! ## A298913.P2102752145864616620

`A298917(∑[4*n]+1)`
-/

namespace A298913.P2102752145864616620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298913.P2102752145864616620

/-! ## A298913.P2997194761263399836

`and(-1, A298917(A001844(n)))`
-/

namespace A298913.P2997194761263399836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298917 (A001844 n).toNat)

end

end A298913.P2997194761263399836

/-! ## A298913.P11551089184780054678

`A298917(A001844(n))+A025438(n)`
-/

namespace A298913.P11551089184780054678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A001844 n).toNat + A025438 n

end

end A298913.P11551089184780054678

/-! ## A298913.P9258137977409272803

`lcm(A158388(n), A298917(A001844(n)))`
-/

namespace A298913.P9258137977409272803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A298917 (A001844 n).toNat)

end

end A298913.P9258137977409272803

/-! ## A298913.P17873019017520197173

`A298917(A001844(n))%A069835(n+3)`
-/

namespace A298913.P17873019017520197173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298917 (A001844 n).toNat) (A069835 (n + 3))

end

end A298913.P17873019017520197173

/-!
# A298914: Number of n X 5 0..1 arrays with every element equal to 0, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298914, there is no canonical definition to state claims against.
-/

/-! ## A298914.P6383067597816000275

`A298917(A374005(n+1))`
-/

namespace A298914.P6383067597816000275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A374005 (n + 1)).toNat

end

end A298914.P6383067597816000275

/-! ## A298914.P10212954394109623423

`A298917(A167499(n+3))`
-/

namespace A298914.P10212954394109623423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A167499 (n + 3)).toNat

end

end A298914.P10212954394109623423

/-! ## A298914.P8434395112578112292

`A298917(A155212(n)+13)`
-/

namespace A298914.P8434395112578112292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A155212 n + 13).toNat

end

end A298914.P8434395112578112292

/-! ## A298914.P7207490851241139713

`A298917(A056000(n)+15)`
-/

namespace A298914.P7207490851241139713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A056000 n + 15).toNat

end

end A298914.P7207490851241139713

/-! ## A298914.P2190025299696303128

`A298917(A000124(n+4)+4)`
-/

namespace A298914.P2190025299696303128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A000124 (n + 4) + 4).toNat

end

end A298914.P2190025299696303128

/-!
# A298915: Number of nX6 0..1 arrays with every element equal to 0, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298915, there is no canonical definition to state claims against.
-/

/-! ## A298915.P13508357264840791558

`A298917(A374007(n+1))`
-/

namespace A298915.P13508357264840791558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A374007 (n + 1)).toNat

end

end A298915.P13508357264840791558

/-! ## A298915.P6880875561163972404

`A298917(A166136(n+4))`
-/

namespace A298915.P6880875561163972404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A166136 (n + 4)).toNat

end

end A298915.P6880875561163972404

/-! ## A298915.P823703922942201482

`A298917(A056115(n)+21)`
-/

namespace A298915.P823703922942201482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A056115 n + 21).toNat

end

end A298915.P823703922942201482

/-! ## A298915.P16759292051536765721

`A298917(A167499(n+4)+1)`
-/

namespace A298915.P16759292051536765721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A167499 (n + 4) + 1).toNat

end

end A298915.P16759292051536765721

/-!
# A298916: Number of nX7 0..1 arrays with every element equal to 0, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298916, there is no canonical definition to state claims against.
-/

/-! ## A298916.P4107925141879451125

`A298917(A374008(n+1))`
-/

namespace A298916.P4107925141879451125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A374008 (n + 1)).toNat

end

end A298916.P4107925141879451125

/-! ## A298916.P2695906065612983449

`A298917(A167487(n+5))`
-/

namespace A298916.P2695906065612983449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A167487 (n + 5)).toNat

end

end A298916.P2695906065612983449

/-! ## A298916.P9657747412373913987

`A298917(A056119(n)+28)`
-/

namespace A298916.P9657747412373913987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A056119 n + 28).toNat

end

end A298916.P9657747412373913987

/-! ## A298916.P1628295516110783501

`A298917(A000124(n+6)+6)`
-/

namespace A298916.P1628295516110783501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A000124 (n + 6) + 6).toNat

end

end A298916.P1628295516110783501

/-! ## A298916.P2837378109691839999

`A298917(A000217(n+6)+7)`
-/

namespace A298916.P2837378109691839999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (A000217 (n + 6) + 7).toNat

end

end A298916.P2837378109691839999

/-!
# A298917: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298917, there is no canonical definition to state claims against.
-/

/-! ## A298917.P13776637071244139489

`gcd(A174186(n), A298187(n+1))`
-/

namespace A298917.P13776637071244139489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174186 n) (A298187 (n + 1))

end

end A298917.P13776637071244139489

/-! ## A298917.P4163241082322793886

`A298187(n+1)+A036987(A008292(n+1))`
-/

namespace A298917.P4163241082322793886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (n + 1) + A036987 (A008292 (n + 1)).toNat

end

end A298917.P4163241082322793886

/-! ## A298917.P6423445154589237342

`A298187(n+1)+A111332(A180760(n+1))`
-/

namespace A298917.P6423445154589237342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (n + 1) + A111332 (A180760 (n + 1)).toNat

end

end A298917.P6423445154589237342

/-! ## A298917.P4779169351379203446

`A193169(3^A298187(n+1))`
-/

namespace A298917.P4779169351379203446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A298187 (n + 1) : ℤ))).toNat

end

end A298917.P4779169351379203446

/-! ## A298917.P14798027111124628782

`∏{e}[3^((A094570(n)-1)%A022173(n)), #]`
-/

namespace A298917.P14798027111124628782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod (A094570 n - 1) (A022173 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A298917.P14798027111124628782

/-!
# A298918: Number of n X n 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298918, there is no canonical definition to state claims against.
-/

/-! ## A298918.P3396531155062090487

`A298924(∑[4*n]+1)`
-/

namespace A298918.P3396531155062090487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298918.P3396531155062090487

/-! ## A298918.P16931397924255400340

`and(-1, A298924(A001844(n)))`
-/

namespace A298918.P16931397924255400340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298924 (A001844 n).toNat)

end

end A298918.P16931397924255400340

/-! ## A298918.P11069060394757914174

`A298924(A001844(n))%A283119(n)`
-/

namespace A298918.P11069060394757914174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298924 (A001844 n).toNat) (A283119 n)

end

end A298918.P11069060394757914174

/-! ## A298918.P7165139088211707886

`lcm(A033999(n), A298924(A001844(n)))`
-/

namespace A298918.P7165139088211707886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298924 (A001844 n).toNat)

end

end A298918.P7165139088211707886

/-! ## A298918.P11344055350712860913

`A298924(A001844(n))+A000038(n+1)`
-/

namespace A298918.P11344055350712860913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A001844 n).toNat + A000038 (n + 1)

end

end A298918.P11344055350712860913

/-!
# A298919: Number of nX3 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298919, the canonical program `A298919.P15004585985325643698` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298919 has offset 1).

The definition of A298919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298919.P15004585985325643698

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298919

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P15004585985325643698.Spec : Prop :=
  ∀ n, P15004585985325643698.a n = A298919 (n + 1)

theorem P15004585985325643698.correct : P15004585985325643698.Spec := by
  intro n
  simp only [A298919, Nat.add_sub_cancel]

end A298919

/-! ## A298919.P7367570735049917839

`A298920(n+1)-A131713(n)²`
-/

namespace A298919.P7367570735049917839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298920 (n + 1) - A131713 n ^ 2

end

end A298919.P7367570735049917839

namespace A298919

/-- `A298920(n+1)-A131713(n)²` -/
def P7367570735049917839.Spec : Prop :=
  ∀ n, P7367570735049917839.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P11305920249928372034

`A298920(n+1)-A146325(n+1)`
-/

namespace A298919.P11305920249928372034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298920 (n + 1) - A146325 (n + 1)

end

end A298919.P11305920249928372034

namespace A298919

/-- `A298920(n+1)-A146325(n+1)` -/
def P11305920249928372034.Spec : Prop :=
  ∀ n, P11305920249928372034.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P5574266805994736945

`A298920(n+1)-A101675(A008590(n))²`
-/

namespace A298919.P5574266805994736945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298920 (n + 1) - A101675 (A008590 n).toNat ^ 2

end

end A298919.P5574266805994736945

namespace A298919

/-- `A298920(n+1)-A101675(A008590(n))²` -/
def P5574266805994736945.Spec : Prop :=
  ∀ n, P5574266805994736945.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P10706224350301655109

`A298920(n+1)-A000034(A289813(n))²`
-/

namespace A298919.P10706224350301655109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298920 (n + 1) - A000034 (A289813 n).toNat ^ 2

end

end A298919.P10706224350301655109

namespace A298919

/-- `A298920(n+1)-A000034(A289813(n))²` -/
def P10706224350301655109.Spec : Prop :=
  ∀ n, P10706224350301655109.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P9305840435910633404

`A000045(n)+∑[A087204(n)]*A000035(n)`
-/

namespace A298919.P9305840435910633404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 n

end

end A298919.P9305840435910633404

namespace A298919

/-- `A000045(n)+∑[A087204(n)]*A000035(n)` -/
def P9305840435910633404.Spec : Prop :=
  ∀ n, P9305840435910633404.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P12015574219854714908

`A000045(n)-(A130484(n+1)-A130484(A092200(n)))`
-/

namespace A298919.P12015574219854714908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A130484 (n + 1) - A130484 (A092200 n).toNat)

end

end A298919.P12015574219854714908

namespace A298919

/-- `A000045(n)-(A130484(n+1)-A130484(A092200(n)))` -/
def P12015574219854714908.Spec : Prop :=
  ∀ n, P12015574219854714908.a n = A298919 (n + 1)

end A298919

/-! ## A298919.P3110749010436330575

`A130484(A130481(n+1))-(A130484(n+1)-A000045(n))`
-/

namespace A298919.P3110749010436330575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (A130481 (n + 1)).toNat - (A130484 (n + 1) - A000045 n)

end

end A298919.P3110749010436330575

namespace A298919

/-- `A130484(A130481(n+1))-(A130484(n+1)-A000045(n))` -/
def P3110749010436330575.Spec : Prop :=
  ∀ n, P3110749010436330575.a n = A298919 (n + 1)

end A298919

/-!
# A298920: Number of n X 4 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298920, the canonical program `A298920.P2142301522212951222` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298920 has offset 1).

The definition of A298920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298920.P2142301522212951222

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=1, a(1)=8, a(2)=2, a(3)=3, a(4)=7, a(5)=6, a(6)=9, a(7)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298920

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P2142301522212951222.Spec : Prop :=
  ∀ n, P2142301522212951222.a n = A298920 (n + 1)

theorem P2142301522212951222.correct : P2142301522212951222.Spec := by
  intro n
  simp only [A298920, Nat.add_sub_cancel]

end A298920

/-! ## A298920.P6818487444353052797

`A298919(n+1)+A131713(n)²`
-/

namespace A298920.P6818487444353052797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1) + A131713 n ^ 2

end

end A298920.P6818487444353052797

namespace A298920

/-- `A298919(n+1)+A131713(n)²` -/
def P6818487444353052797.Spec : Prop :=
  ∀ n, P6818487444353052797.a n = A298920 (n + 1)

end A298920

/-! ## A298920.P953734910797644295

`A298919(n+1)+A146325(n+1)`
-/

namespace A298920.P953734910797644295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1) + A146325 (n + 1)

end

end A298920.P953734910797644295

namespace A298920

/-- `A298919(n+1)+A146325(n+1)` -/
def P953734910797644295.Spec : Prop :=
  ∀ n, P953734910797644295.a n = A298920 (n + 1)

end A298920

/-! ## A298920.P12414067847651523366

`A000045(n)+dr(A276382(n+1)²)`
-/

namespace A298920.P12414067847651523366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (SequenceMachineLib.digitalRoot (A276382 (n + 1) ^ 2) : ℤ)

end

end A298920.P12414067847651523366

namespace A298920

/-- `A000045(n)+dr(A276382(n+1)²)` -/
def P12414067847651523366.Spec : Prop :=
  ∀ n, P12414067847651523366.a n = A298920 (n + 1)

end A298920

/-! ## A298920.P3948380981189121254

`A298919(n+1)+A101675(A008590(n))²`
-/

namespace A298920.P3948380981189121254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1) + A101675 (A008590 n).toNat ^ 2

end

end A298920.P3948380981189121254

namespace A298920

/-- `A298919(n+1)+A101675(A008590(n))²` -/
def P3948380981189121254.Spec : Prop :=
  ∀ n, P3948380981189121254.a n = A298920 (n + 1)

end A298920

/-! ## A298920.P2089693694440471191

`A298919(n+1)+A000034(A289813(n))²`
-/

namespace A298920.P2089693694440471191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1) + A000034 (A289813 n).toNat ^ 2

end

end A298920.P2089693694440471191

namespace A298920

/-- `A298919(n+1)+A000034(A289813(n))²` -/
def P2089693694440471191.Spec : Prop :=
  ∀ n, P2089693694440471191.a n = A298920 (n + 1)

end A298920

/-! ## A298920.P17998387805470885761

`A298919(n+1)+gcd(2, A175661(n+1))²`
-/

namespace A298920.P17998387805470885761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1) + (Int.gcd 2 (A175661 (n + 1)) ^ 2 : ℤ)

end

end A298920.P17998387805470885761

namespace A298920

/-- `A298919(n+1)+gcd(2, A175661(n+1))²` -/
def P17998387805470885761.Spec : Prop :=
  ∀ n, P17998387805470885761.a n = A298920 (n + 1)

end A298920

/-!
# A298921: Number of nX5 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298921, there is no canonical definition to state claims against.
-/

/-! ## A298921.P15932816458664851064

`A298924(A374005(n+1))`
-/

namespace A298921.P15932816458664851064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A374005 (n + 1)).toNat

end

end A298921.P15932816458664851064

/-! ## A298921.P3018453827906179337

`A298924(A167499(n+3))`
-/

namespace A298921.P3018453827906179337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A167499 (n + 3)).toNat

end

end A298921.P3018453827906179337

/-! ## A298921.P13437820300817863936

`A298924(A056000(n)+15)`
-/

namespace A298921.P13437820300817863936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A056000 n + 15).toNat

end

end A298921.P13437820300817863936

/-! ## A298921.P14486307498690812873

`A298924(A167614(n+3)+2)`
-/

namespace A298921.P14486307498690812873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A167614 (n + 3) + 2).toNat

end

end A298921.P14486307498690812873

/-! ## A298921.P6980170920397422042

`A298924(A000124(n+4)+4)`
-/

namespace A298921.P6980170920397422042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A000124 (n + 4) + 4).toNat

end

end A298921.P6980170920397422042

/-!
# A298922: Number of nX6 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298922, there is no canonical definition to state claims against.
-/

/-! ## A298922.P1945478608625193503

`A298924(A374007(n+1))`
-/

namespace A298922.P1945478608625193503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A374007 (n + 1)).toNat

end

end A298922.P1945478608625193503

/-! ## A298922.P6431393929370676621

`A298924(A167499(n+4)+1)`
-/

namespace A298922.P6431393929370676621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A167499 (n + 4) + 1).toNat

end

end A298922.P6431393929370676621

/-! ## A298922.P3742775449870619836

`A298924(A133263(n+5)+4)`
-/

namespace A298922.P3742775449870619836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A133263 (n + 5) + 4).toNat

end

end A298922.P3742775449870619836

/-! ## A298922.P17650598701101072029

`A298924(A000124(n+5)+5)`
-/

namespace A298922.P17650598701101072029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A000124 (n + 5) + 5).toNat

end

end A298922.P17650598701101072029

/-! ## A298922.P12835242262871497234

`A298924(A000096(n+4)+7)`
-/

namespace A298922.P12835242262871497234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A000096 (n + 4) + 7).toNat

end

end A298922.P12835242262871497234

/-!
# A298923: Number of n X 7 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298923, there is no canonical definition to state claims against.
-/

/-! ## A298923.P5339667501221002910

`A298924(A374008(n+1))`
-/

namespace A298923.P5339667501221002910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A374008 (n + 1)).toNat

end

end A298923.P5339667501221002910

/-! ## A298923.P10391954954440276381

`A298924(A167499(n+5)+2)`
-/

namespace A298923.P10391954954440276381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A167499 (n + 5) + 2).toNat

end

end A298923.P10391954954440276381

/-! ## A298923.P348217673520983892

`A298924(A167614(n+5)+4)`
-/

namespace A298923.P348217673520983892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A167614 (n + 5) + 4).toNat

end

end A298923.P348217673520983892

/-! ## A298923.P3935477866053791345

`A298924(A000124(n+6)+6)`
-/

namespace A298923.P3935477866053791345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A000124 (n + 6) + 6).toNat

end

end A298923.P3935477866053791345

/-! ## A298923.P12396044852828619538

`A298924(A000217(n+6)+7)`
-/

namespace A298923.P12396044852828619538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298924 (A000217 (n + 6) + 7).toNat

end

end A298923.P12396044852828619538

/-!
# A298924: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298924, there is no canonical definition to state claims against.
-/

/-! ## A298924.P10098773842510729737

`and(A068197(A186462(n+1)), A298575(n+1))`
-/

namespace A298924.P10098773842510729737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068197 (A186462 (n + 1)).toNat) (A298575 (n + 1))

end

end A298924.P10098773842510729737

/-! ## A298924.P11480310872146066044

`and(A180985(n+1), A298575(A242474(n+1)))`
-/

namespace A298924.P11480310872146066044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180985 (n + 1)) (A298575 (A242474 (n + 1)).toNat)

end

end A298924.P11480310872146066044

/-! ## A298924.P420028676244059495

`and(A118759(A180985(n+1)), A298575(n+1))`
-/

namespace A298924.P420028676244059495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118759 (A180985 (n + 1)).toNat) (A298575 (n + 1))

end

end A298924.P420028676244059495

/-! ## A298924.P9358409756390107754

`and(A180985(n+1), A348028(A340427(n+1)))`
-/

namespace A298924.P9358409756390107754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180985 (n + 1)) (A348028 (A340427 (n + 1)).toNat)

end

end A298924.P9358409756390107754

/-! ## A298924.P16245094920581745938

`and(3-A287797(n+1), A348028(A340427(n+1)))`
-/

namespace A298924.P16245094920581745938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 - A287797 (n + 1)) (A348028 (A340427 (n + 1)).toNat)

end

end A298924.P16245094920581745938

/-!
# A298925: Number of n X n 0..1 arrays with every element equal to 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298925, there is no canonical definition to state claims against.
-/

/-! ## A298925.P9807615361917634300

`A298930(∑[4*n]+1)`
-/

namespace A298925.P9807615361917634300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298925.P9807615361917634300

/-! ## A298925.P477886271886132999

`and(-1, A298930(A001844(n)))`
-/

namespace A298925.P477886271886132999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298930 (A001844 n).toNat)

end

end A298925.P477886271886132999

/-! ## A298925.P18056846837262737075

`A298930(A001844(n))+A107846(n)`
-/

namespace A298925.P18056846837262737075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A001844 n).toNat + A107846 n

end

end A298925.P18056846837262737075

/-! ## A298925.P4031715717308976869

`A308920(n)+A298930(A001844(n))`
-/

namespace A298925.P4031715717308976869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n + A298930 (A001844 n).toNat

end

end A298925.P4031715717308976869

/-! ## A298925.P5378842250897791933

`A308921(n)+A298930(A001844(n))`
-/

namespace A298925.P5378842250897791933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308921 n + A298930 (A001844 n).toNat

end

end A298925.P5378842250897791933

/-!
# A298926: Number of n X 4 0..1 arrays with every element equal to 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298926, there is no canonical definition to state claims against.
-/

/-! ## A298926.P6472743650378089785

`A298930(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A298926.P6472743650378089785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298926.P6472743650378089785

/-! ## A298926.P8891336241050087197

`A298930(∑[n+1]+2*n+9)`
-/

namespace A298926.P8891336241050087197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 9))

end

end A298926.P8891336241050087197

/-! ## A298926.P10414922632408959981

`A298930(A374004(n+1))+A129947(n+1)`
-/

namespace A298926.P10414922632408959981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A374004 (n + 1)).toNat + A129947 (n + 1)

end

end A298926.P10414922632408959981

/-! ## A298926.P738191710403045554

`A038712(2*n+3)*A298930(A167614(n+2)+1)`
-/

namespace A298926.P738191710403045554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 3) * A298930 (A167614 (n + 2) + 1).toNat

end

end A298926.P738191710403045554

/-! ## A298926.P8611281919959050765

`record[A298930(A019304(n))]`
-/

namespace A298926.P8611281919959050765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298926.P8611281919959050765

/-!
# A298927: Number of nX5 0..1 arrays with every element equal to 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298927, there is no canonical definition to state claims against.
-/

/-! ## A298927.P13609451203829125714

`A298930(∑[n+4]+11)`
-/

namespace A298927.P13609451203829125714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298927.P13609451203829125714

/-! ## A298927.P16106982383622608916

`A298930(A000124(n+4)+4)+char[18]`
-/

namespace A298927.P16106982383622608916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298927.P16106982383622608916

/-! ## A298927.P964259715306841823

`A326542(n)+A298930(A167499(n+3))`
-/

namespace A298927.P964259715306841823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A298930 (A167499 (n + 3)).toNat

end

end A298927.P964259715306841823

/-! ## A298927.P886356629753101673

`A298930(A167499(n+3))%A206776(n+2)`
-/

namespace A298927.P886356629753101673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298930 (A167499 (n + 3)).toNat) (A206776 (n + 2))

end

end A298927.P886356629753101673

/-! ## A298927.P16709710946030738081

`A007318(C(3, n))*A298930(A000124(n+4)+4)`
-/

namespace A298927.P16709710946030738081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A298930 (A000124 (n + 4) + 4).toNat

end

end A298927.P16709710946030738081

/-!
# A298928: Number of nX6 0..1 arrays with every element equal to 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298928, there is no canonical definition to state claims against.
-/

/-! ## A298928.P5134096840975199519

`A298930(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A298928.P5134096840975199519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298928.P5134096840975199519

/-! ## A298928.P9974645787259149319

`A298930(A374007(n+1))`
-/

namespace A298928.P9974645787259149319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A374007 (n + 1)).toNat

end

end A298928.P9974645787259149319

/-! ## A298928.P7463235088862815963

`A298930(A056115(n)+21)`
-/

namespace A298928.P7463235088862815963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A056115 n + 21).toNat

end

end A298928.P7463235088862815963

/-! ## A298928.P8885772573368285659

`A298930(eq[6, A256910(n)])`
-/

namespace A298928.P8885772573368285659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298928.P8885772573368285659

/-! ## A298928.P18153053623633025971

`A298930(A167499(n+4)+1)`
-/

namespace A298928.P18153053623633025971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A167499 (n + 4) + 1).toNat

end

end A298928.P18153053623633025971

/-!
# A298929: Number of nX7 0..1 arrays with every element equal to 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298929, there is no canonical definition to state claims against.
-/

/-! ## A298929.P16538129577407441804

`A298930(∑[a(n-1)+1])` with `a(0)=28, a(1)=7`
-/

namespace A298929.P16538129577407441804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298929.P16538129577407441804

/-! ## A298929.P3964380809830822696

`A298930(A374008(n+1))`
-/

namespace A298929.P3964380809830822696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A374008 (n + 1)).toNat

end

end A298929.P3964380809830822696

/-! ## A298929.P16557823793762151373

`A298930(A167487(n+5))`
-/

namespace A298929.P16557823793762151373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A167487 (n + 5)).toNat

end

end A298929.P16557823793762151373

/-! ## A298929.P1910734336150637510

`A298930(A056119(n)+28)`
-/

namespace A298929.P1910734336150637510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A056119 n + 28).toNat

end

end A298929.P1910734336150637510

/-! ## A298929.P14546744182708108036

`A298930(eq[11, A066657(n)])`
-/

namespace A298929.P14546744182708108036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298929.P14546744182708108036

/-!
# A298931: Expansion of psi(x^4) * c(x^3) / (3*x) where phi() is a Ramanujan theta function and c() is a cubic AGM theta function.

The programs for A298931, there is no canonical definition to state claims against.
-/

/-! ## A298931.P4200300358177594451

`A005872(2*n+3)/6`
-/

namespace A298931.P4200300358177594451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005872 (2 * n + 3) : ℚ) / 6

end

end A298931.P4200300358177594451

/-! ## A298931.P14437901049318368326

`A051724(2*A005872(2*n+3))`
-/

namespace A298931.P14437901049318368326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * A005872 (2 * n + 3)).toNat

end

end A298931.P14437901049318368326

/-! ## A298931.P17138372775493530184

`A008615(A005872(Δ[A005563(n)]))`
-/

namespace A298931.P17138372775493530184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005872 (f1 (n + 1) - f1 n).toNat).toNat

end

end A298931.P17138372775493530184

/-! ## A298931.P6580924900445869037

`A008615(A005872(A005408(n+1)))`
-/

namespace A298931.P6580924900445869037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005872 (A005408 (n + 1)).toNat).toNat

end

end A298931.P6580924900445869037

/-! ## A298931.P13703182559346486025

`A008615(A005872(2*n+1)+Δ[A005872(2*n+1)])`
-/

namespace A298931.P13703182559346486025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005872 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A298931.P13703182559346486025

/-! ## A298931.P1232230116309776830

`A045827(A047544(n+2))`
-/

namespace A298931.P1232230116309776830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (A047544 (n + 2)).toNat

end

end A298931.P1232230116309776830

/-! ## A298931.P1836051267475749699

`A045827(2*n+3)`
-/

namespace A298931.P1836051267475749699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (2 * n + 3)

end

end A298931.P1836051267475749699

/-!
# A298932: Expansion of f(-x^3)^3 * phi(-x^12) / (f(-x) * chi(-x^4)) in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A298932, there is no canonical definition to state claims against.
-/

/-! ## A298932.P11231295615102046956

`A298931(3*n)`
-/

namespace A298932.P11231295615102046956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (3 * n)

end

end A298932.P11231295615102046956

/-! ## A298932.P8389085198973078364

`A298931(A008585(n))%(n+2)`
-/

namespace A298932.P8389085198973078364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298931 (A008585 n).toNat) (n + 2 : ℤ)

end

end A298932.P8389085198973078364

/-! ## A298932.P18056046036722557282

`A298931(A008486(n))+A000007(n)`
-/

namespace A298932.P18056046036722557282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A008486 n).toNat + A000007 n

end

end A298932.P18056046036722557282

/-! ## A298932.P1146682823458630516

`A298931(A008585(n))+val(A030604(n)+1, 10)`
-/

namespace A298932.P1146682823458630516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A008585 n).toNat + (SequenceMachineLib.valuation (A030604 n + 1).toNat 10 : ℤ)

end

end A298932.P1146682823458630516

/-! ## A298932.P5056135763551097074

`A298931(A008585(n))+val(A000010(n+1)+1, 10)`
-/

namespace A298932.P5056135763551097074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A008585 n).toNat + (SequenceMachineLib.valuation (A000010 (n + 1) + 1).toNat 10 : ℤ)

end

end A298932.P5056135763551097074

/-! ## A298932.P5142609265331211520

`A298931(A008486(n))^A001222(A008578(n+1))`
-/

namespace A298932.P5142609265331211520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298931 (A008486 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A298932.P5142609265331211520

/-! ## A298932.P2003171539045139187

`A245669(6*n+3)/3`
-/

namespace A298932.P2003171539045139187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245669 (6 * n + 3) : ℚ) / 3

end

end A298932.P2003171539045139187

/-! ## A298932.P280026883200935580

`A002264(A245669(Δ[A033428(n)]))`
-/

namespace A298932.P280026883200935580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A245669 (f1 (n + 1) - f1 n).toNat).toNat

end

end A298932.P280026883200935580

/-! ## A298932.P13170574951072475008

`A298931(A004525(A008458(n)))+A000007(n)`
-/

namespace A298932.P13170574951072475008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A004525 (A008458 n).toNat).toNat + A000007 n

end

end A298932.P13170574951072475008

/-! ## A298932.P2070919090263400367

`A045827(6*n+3)`
-/

namespace A298932.P2070919090263400367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (6 * n + 3)

end

end A298932.P2070919090263400367

/-! ## A298932.P15448899461934953890

`A004012(12*n+6)/6`
-/

namespace A298932.P15448899461934953890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004012 (12 * n + 6) : ℚ) / 6

end

end A298932.P15448899461934953890

/-! ## A298932.P13905025905219037555

`A298931(A008486(n))+A010054(A000124(n))`
-/

namespace A298932.P13905025905219037555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A008486 n).toNat + A010054 (A000124 n).toNat

end

end A298932.P13905025905219037555

/-!
# A298933: Expansion of f(x, x^2) * f(x, x^3) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A298933, there is no canonical definition to state claims against.
-/

/-! ## A298933.P3509377439970928613

`A298932(2*n)`
-/

namespace A298933.P3509377439970928613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (2 * n)

end

end A298933.P3509377439970928613

/-! ## A298933.P13049965808646746113

`xor(1, xor(1, A298932(n+n)))`
-/

namespace A298933.P13049965808646746113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A298932 (n + n)))

end

end A298933.P13049965808646746113

/-! ## A298933.P12789055259788910496

`A028310(A298932(record[and(n, n+1)]))`
-/

namespace A298933.P12789055259788910496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A298932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A298933.P12789055259788910496

/-! ## A298933.P2798039787866528058

`A298932(n+n)+A005872(A004016(n))`
-/

namespace A298933.P2798039787866528058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (n + n) + A005872 (A004016 n).toNat

end

end A298933.P2798039787866528058

/-! ## A298933.P7915778241713925525

`A298931(6*n)`
-/

namespace A298933.P7915778241713925525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (6 * n)

end

end A298933.P7915778241713925525

/-! ## A298933.P2608432128305409804

`A298931(A008458(n))+A000007(n)`
-/

namespace A298933.P2608432128305409804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A008458 n).toNat + A000007 n

end

end A298933.P2608432128305409804

/-! ## A298933.P1130023470520409017

`A298932(n+n)/A197943(A000040(n+1))`
-/

namespace A298933.P1130023470520409017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298932 (n + n) : ℚ) / (A197943 (A000040 (n + 1)).toNat : ℚ)

end

end A298933.P1130023470520409017

/-! ## A298933.P4186461057936660825

`A045827(12*n+3)`
-/

namespace A298933.P4186461057936660825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (12 * n + 3)

end

end A298933.P4186461057936660825

/-!
# A298934: Number of partitions of n^2 into distinct cubes.

The programs for A298934, there is no canonical definition to state claims against.
-/

/-! ## A298934.P15195652182118587477

`A279329(A000290(n))`
-/

namespace A298934.P15195652182118587477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A000290 n).toNat

end

end A298934.P15195652182118587477

/-! ## A298934.P791436858397421276

`A279329(n²)`
-/

namespace A298934.P791436858397421276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (n ^ 2)

end

end A298934.P791436858397421276

/-! ## A298934.P11064749566956871976

`A000009(A279329(n))*A279329(n^2)`
-/

namespace A298934.P11064749566956871976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A279329 n).toNat * A279329 (n ^ 2)

end

end A298934.P11064749566956871976

/-! ## A298934.P15209756747327672817

`A007318(A279329(n))*A279329(n*n)`
-/

namespace A298934.P15209756747327672817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A279329 n).toNat * A279329 (n * n)

end

end A298934.P15209756747327672817

/-! ## A298934.P6432532769511644571

`A279329(n*n)%A016755(A003108(n))`
-/

namespace A298934.P6432532769511644571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279329 (n * n)) (A016755 (A003108 n).toNat)

end

end A298934.P6432532769511644571

/-! ## A298934.P1819182060270454794

`A279329(A001476(n+1))+A279329(n^2)`
-/

namespace A298934.P1819182060270454794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A001476 (n + 1)).toNat + A279329 (n ^ 2)

end

end A298934.P1819182060270454794

/-!
# A298935: Number of partitions of n^3 into distinct squares.

The programs for A298935, there is no canonical definition to state claims against.
-/

/-! ## A298935.P17300913215633054792

`A033461(A000578(n))`
-/

namespace A298935.P17300913215633054792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A000578 n).toNat

end

end A298935.P17300913215633054792

/-! ## A298935.P11476867140483851588

`A033461(n^3)`
-/

namespace A298935.P11476867140483851588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (n ^ 3)

end

end A298935.P11476867140483851588

/-! ## A298935.P10155129446174519989

`or(char[1], A033461(n*n²))`
-/

namespace A298935.P10155129446174519989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A033461 (n * n ^ 2))

end

end A298935.P10155129446174519989

/-! ## A298935.P4624985761977502197

`A007318(∑[n])*A033461(n*n²)`
-/

namespace A298935.P4624985761977502197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A033461 (n * n ^ 2)

end

end A298935.P4624985761977502197

/-! ## A298935.P7836437835263533523

`A033461(n*n²)%A000108(n+3)`
-/

namespace A298935.P7836437835263533523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (n * n ^ 2)) (A000108 (n + 3))

end

end A298935.P7836437835263533523

/-!
# A298936: Number of ordered ways of writing n^2 as a sum of n nonnegative cubes.

The programs for A298936, there is no canonical definition to state claims against.
-/

/-! ## A298936.P13805363612796085141

`∑{d}[n+1, (#+n)%2]*A340653(A002110(n))`
-/

namespace A298936.P13805363612796085141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 : ℕ) : ℤ) * A340653 (A002110 n).toNat

end

end A298936.P13805363612796085141

/-! ## A298936.P8914574495943235758

`C(A057820(A214309(n+4)), (n+1)/2^val(n+1, 2))`
-/

namespace A298936.P8914574495943235758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057820 (A214309 (n + 4)).toNat).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A298936.P8914574495943235758

/-! ## A298936.P8562403696440451318

`lcm(A332005(A022093(n)), A340601(n))`
-/

namespace A298936.P8562403696440451318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A332005 (A022093 n).toNat) (A340601 n)

end

end A298936.P8562403696440451318

/-!
# A298937: Number of ordered ways of writing n^2 as a sum of n positive cubes.

The programs for A298937, there is no canonical definition to state claims against.
-/

/-! ## A298937.P1176168463727110629

`A005206(C(A008292(n+1), A023746(n+1)))`
-/

namespace A298937.P1176168463727110629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Nat.choose (A008292 (n + 1)).toNat (A023746 (n + 1)).toNat)

end

end A298937.P1176168463727110629

/-!
# A298938: Number of ordered ways of writing n^3 as a sum of n squares of nonnegative integers.

The programs for A298938, there is no canonical definition to state claims against.
-/

/-! ## A298938.P2386495808537547723

`A289081(A357927(n+1))`
-/

namespace A298938.P2386495808537547723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289081 (A357927 (n + 1)).toNat

end

end A298938.P2386495808537547723

/-! ## A298938.P11092066496681216017

`A317082(A000129(n)/A128227(n))`
-/

namespace A298938.P11092066496681216017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317082 (SequenceMachineLib.roundAway ((A000129 n : ℚ) / (A128227 n : ℚ))).toNat

end

end A298938.P11092066496681216017

/-!
# A298939: Number of ordered ways of writing n^3 as a sum of n squares of positive integers.

The programs for A298939, there is no canonical definition to state claims against.
-/

/-! ## A298939.P14442603139459656549

`A090353(abs(a(n-1)-n))` with `a(0)=1`
-/

namespace A298939.P14442603139459656549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090353 |a (n - 1) - (n : ℤ)|.toNat

end

end A298939.P14442603139459656549

/-! ## A298939.P16232219675584648308

`A322390((n+1)*∏{p}[n+1, #]+1)^val(n+1, 2)`
-/

namespace A298939.P16232219675584648308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) ^ SequenceMachineLib.valuation (n + 1) 2

end

end A298939.P16232219675584648308

/-!
# A298940: a(n) is the smallest positive integer k such that 3^n - 2 divides 3^(n + k) + 2, or 0 if there is no such k.

The programs for A298940, there is no canonical definition to state claims against.
-/

/-! ## A298940.P17156578691790902731

`A002024(lcm(A033140(n+1), A282417(n)))`
-/

namespace A298940.P17156578691790902731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lcm (A033140 (n + 1)) (A282417 n))

end

end A298940.P17156578691790902731

/-! ## A298940.P15356798471891452632

`A333223(A272919(2*n+5))-A242290(n+1)`
-/

namespace A298940.P15356798471891452632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A272919 (2 * n + 5)).toNat - A242290 (n + 1)

end

end A298940.P15356798471891452632

/-!
# A298941: Number of permutations of the multiset of prime factors of n > 1 that are Lyndon words.

The programs for A298941, there is no canonical definition to state claims against.
-/

/-! ## A298941.P13447069302808022880

`A318808(∏{e}[n+2, A000040(#)])`
-/

namespace A298941.P13447069302808022880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A298941.P13447069302808022880

/-! ## A298941.P4841548388507400017

`A318808(A181819(n+2))`
-/

namespace A298941.P4841548388507400017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A181819 (n + 2)).toNat

end

end A298941.P4841548388507400017

/-! ## A298941.P8226576559860051217

`A002262(C(n, 2))+A000196(A295281(n+2))`
-/

namespace A298941.P8226576559860051217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose n 2) + A000196 (A295281 (n + 2)).toNat

end

end A298941.P8226576559860051217

/-! ## A298941.P3024491371265173629

`A000196(A295281(n+2))%A007918(C(n, 2))`
-/

namespace A298941.P3024491371265173629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A295281 (n + 2)).toNat) (A007918 (Nat.choose n 2))

end

end A298941.P3024491371265173629

/-! ## A298941.P14038910967475874935

`A000196(A295281(n+2))*A107435(C(n, 2)+1)`
-/

namespace A298941.P14038910967475874935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295281 (n + 2)).toNat * A107435 (Nat.choose n 2 + 1)

end

end A298941.P14038910967475874935

/-! ## A298941.P384000527854324383

`A000196(A295281(n+2))*A057427(∑[n]+2)`
-/

namespace A298941.P384000527854324383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295281 (n + 2)).toNat * A057427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298941.P384000527854324383

/-! ## A298941.P2744349988810517878

`A000196(A295281(n+2))+A000038(A000124(n))`
-/

namespace A298941.P2744349988810517878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295281 (n + 2)).toNat + A000038 (A000124 n).toNat

end

end A298941.P2744349988810517878

/-! ## A298941.P2793730586763035754

`A000196(A295281(n+2))*A010054(A000217(n))`
-/

namespace A298941.P2793730586763035754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295281 (n + 2)).toNat * A010054 (A000217 n).toNat

end

end A298941.P2793730586763035754

/-! ## A298941.P11688098565603792258

`A000196(A295281(n+2))*A010054(∑[n+1])`
-/

namespace A298941.P11688098565603792258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295281 (n + 2)).toNat * A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298941.P11688098565603792258

/-! ## A298941.P10939913863242396307

`A091393(A060626(n))+A000196(A295281(n+2))`
-/

namespace A298941.P10939913863242396307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (A060626 n).toNat + A000196 (A295281 (n + 2)).toNat

end

end A298941.P10939913863242396307

/-! ## A298941.P2404127063521435255

`A185705(A098848(2*n+1))+A000196(A295281(n+2))`
-/

namespace A298941.P2404127063521435255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185705 (A098848 (2 * n + 1)).toNat + A000196 (A295281 (n + 2)).toNat

end

end A298941.P2404127063521435255

/-! ## A298941.P2288843174829017365

`A175830(3*A295281(n+2))`
-/

namespace A298941.P2288843174829017365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175830 (3 * A295281 (n + 2)).toNat

end

end A298941.P2288843174829017365

/-! ## A298941.P5401205365654666870

`ceil(A295281(n+2)/A000040(A318577(n+1)+1))`
-/

namespace A298941.P5401205365654666870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295281 (n + 2) : ℚ) / (A000040 (A318577 (n + 1) + 1).toNat : ℚ)⌉

end

end A298941.P5401205365654666870

/-!
# A298943: Lower of two consecutive Mersenne prime exponents with record first difference.

The programs for A298943, there is no canonical definition to state claims against.
-/

/-! ## A298943.P85560713420023372

`∩[A079739(n+1), A270427(n+1)]`
-/

namespace A298943.P85560713420023372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298943.P85560713420023372

/-! ## A298943.P16541462178538568532

`∩[A079739(n+1), A307625(n+1)]`
-/

namespace A298943.P16541462178538568532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298943.P16541462178538568532

/-! ## A298943.P11725866582649404879

`∩[A079739(n+1), A383065(n+1)]`
-/

namespace A298943.P11725866582649404879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298943.P11725866582649404879

/-! ## A298943.P6544397709392233019

`A000043(A087686(n+1)^A306245(n))`
-/

namespace A298943.P6544397709392233019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.roundAway ((A087686 (n + 1) : ℚ) ^ (A306245 n : ℤ))).toNat

end

end A298943.P6544397709392233019

/-!
# A298944: a(n) = 2^(c-1) mod c^2, where c is the n-th composite number.

The programs for A298944, the canonical program `A298944.P11431826460709050354` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298944 has offset 1).

The definition of A298944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298944.P11431826460709050354

`A220105(Δ[A053767(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A298944

/-- `A220105(Δ[A053767(n)])` -/
def P11431826460709050354.Spec : Prop :=
  ∀ n, P11431826460709050354.a n = A298944 (n + 1)

theorem P11431826460709050354.correct : P11431826460709050354.Spec := by
  intro n
  simp only [A298944, Nat.add_sub_cancel]

end A298944

/-! ## A298944.P5997977285418135158

`A220105(A002808(n+1))`
-/

namespace A298944.P5997977285418135158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A002808 (n + 1)).toNat

end

end A298944.P5997977285418135158

namespace A298944

/-- `A220105(A002808(n+1))` -/
def P5997977285418135158.Spec : Prop :=
  ∀ n, P5997977285418135158.a n = A298944 (n + 1)

end A298944

/-! ## A298944.P1198968752107811612

`A220105(A018252(n+2))`
-/

namespace A298944.P1198968752107811612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A018252 (n + 2)).toNat

end

end A298944.P1198968752107811612

namespace A298944

/-- `A220105(A018252(n+2))` -/
def P1198968752107811612.Spec : Prop :=
  ∀ n, P1198968752107811612.a n = A298944 (n + 1)

end A298944

/-! ## A298944.P7098235464369499906

`A220105(A072668(n+1)+1)`
-/

namespace A298944.P7098235464369499906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A072668 (n + 1) + 1).toNat

end

end A298944.P7098235464369499906

namespace A298944

/-- `A220105(A072668(n+1)+1)` -/
def P7098235464369499906.Spec : Prop :=
  ∀ n, P7098235464369499906.a n = A298944 (n + 1)

end A298944

/-! ## A298944.P12572473813399252666

`A220105(A060462(n+2)+1)`
-/

namespace A298944.P12572473813399252666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A060462 (n + 2) + 1).toNat

end

end A298944.P12572473813399252666

namespace A298944

/-- `A220105(A060462(n+2)+1)` -/
def P12572473813399252666.Spec : Prop :=
  ∀ n, P12572473813399252666.a n = A298944 (n + 1)

end A298944

/-! ## A298944.P16994605760243274063

`A220105(A053767(n+1)-A053767(n))`
-/

namespace A298944.P16994605760243274063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A053767 (n + 1) - A053767 n).toNat

end

end A298944.P16994605760243274063

namespace A298944

/-- `A220105(A053767(n+1)-A053767(n))` -/
def P16994605760243274063.Spec : Prop :=
  ∀ n, P16994605760243274063.a n = A298944 (n + 1)

theorem P16994605760243274063.correct : P16994605760243274063.Spec := by
  intro n
  simp only [A298944, Nat.add_sub_cancel, A298944.P16994605760243274063.a, A298944.P11431826460709050354.f1, A298944.P11431826460709050354.a, SequenceMachineLib.memo_apply]

end A298944

/-!
# A298945: a(n) = F_{c-(5/c)} mod c^2, where c is the n-th composite number, F_i = A000045(i) and (5/c) is the Kronecker symbol.

The programs for A298945, there is no canonical definition to state claims against.
-/

/-! ## A298945.P16628477551563494705

`A113649(A002808(n+1))`
-/

namespace A298945.P16628477551563494705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A002808 (n + 1)).toNat

end

end A298945.P16628477551563494705

/-! ## A298945.P608938763939526175

`A113649(A018252(n+2))`
-/

namespace A298945.P608938763939526175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A018252 (n + 2)).toNat

end

end A298945.P608938763939526175

/-! ## A298945.P12356455168196585829

`A113649(comp[A158611(n+1)])`
-/

namespace A298945.P12356455168196585829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A298945.P12356455168196585829

/-! ## A298945.P18281767575448163872

`A113649(A072668(n+1)+1)`
-/

namespace A298945.P18281767575448163872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A072668 (n + 1) + 1).toNat

end

end A298945.P18281767575448163872

/-! ## A298945.P5066124481768670519

`A113649(A060462(n+2)+1)`
-/

namespace A298945.P5066124481768670519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A060462 (n + 2) + 1).toNat

end

end A298945.P5066124481768670519

/-! ## A298945.P11237947737664388669

`A113649(A166460(n+2)+1)`
-/

namespace A298945.P11237947737664388669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A166460 (n + 2) + 1).toNat

end

end A298945.P11237947737664388669

/-!
# A298946: a(n) = binomial(2*c-1, c-1) (mod c^4), where c is the n-th composite number.

The programs for A298946, the canonical program `A298946.P13261524551093357640` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298946 has offset 1).

The definition of A298946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298946.P13261524551093357640

`A099908(A002808(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298946

/-- `A099908(A002808(n+1))` -/
def P13261524551093357640.Spec : Prop :=
  ∀ n, P13261524551093357640.a n = A298946 (n + 1)

theorem P13261524551093357640.correct : P13261524551093357640.Spec := by
  intro n
  simp only [A298946, Nat.add_sub_cancel]

end A298946

/-! ## A298946.P10680614168695508920

`A099908(A018252(n+2))`
-/

namespace A298946.P10680614168695508920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A018252 (n + 2)).toNat

end

end A298946.P10680614168695508920

namespace A298946

/-- `A099908(A018252(n+2))` -/
def P10680614168695508920.Spec : Prop :=
  ∀ n, P10680614168695508920.a n = A298946 (n + 1)

end A298946

/-! ## A298946.P7647390918195648912

`A099908(A065090(n+3))`
-/

namespace A298946.P7647390918195648912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A065090 (n + 3)).toNat

end

end A298946.P7647390918195648912

namespace A298946

/-- `A099908(A065090(n+3))` -/
def P7647390918195648912.Spec : Prop :=
  ∀ n, P7647390918195648912.a n = A298946 (n + 1)

end A298946

/-! ## A298946.P17653069308840989652

`A099908(A072668(n+1)+1)`
-/

namespace A298946.P17653069308840989652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A072668 (n + 1) + 1).toNat

end

end A298946.P17653069308840989652

namespace A298946

/-- `A099908(A072668(n+1)+1)` -/
def P17653069308840989652.Spec : Prop :=
  ∀ n, P17653069308840989652.a n = A298946 (n + 1)

end A298946

/-! ## A298946.P3175962153625609768

`A099908(A060462(n+2)+1)`
-/

namespace A298946.P3175962153625609768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A060462 (n + 2) + 1).toNat

end

end A298946.P3175962153625609768

namespace A298946

/-- `A099908(A060462(n+2)+1)` -/
def P3175962153625609768.Spec : Prop :=
  ∀ n, P3175962153625609768.a n = A298946 (n + 1)

end A298946

/-!
# A298949: Expansion of Product_{k>=2} 1/(1 + x^{F_k}) where F_k are the Fibonacci numbers.

The programs for A298949, there is no canonical definition to state claims against.
-/

/-! ## A298949.P5266452540934268603

`2*A339371(n)-A003107(n)`
-/

namespace A298949.P5266452540934268603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339371 n - A003107 n

end

end A298949.P5266452540934268603

/-! ## A298949.P12857911768454753518

`2*A339371(n)-∑[A238999(n)]`
-/

namespace A298949.P12857911768454753518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339371 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298949.P12857911768454753518

/-! ## A298949.P7997084597515487929

`A339371(n)-A339372(n)`
-/

namespace A298949.P7997084597515487929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339371 n - A339372 n

end

end A298949.P7997084597515487929

/-! ## A298949.P2066046519304424736

`A003107(n)-2*A339372(n)`
-/

namespace A298949.P2066046519304424736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 n - 2 * A339372 n

end

end A298949.P2066046519304424736

/-! ## A298949.P9604488116978366642

`∑[A238999(n)]-2*A339372(n)`
-/

namespace A298949.P9604488116978366642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339372 n

end

end A298949.P9604488116978366642

/-! ## A298949.P4669735295088340617

`A005843(A339371(n))-A003107(n)`
-/

namespace A298949.P4669735295088340617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339371 n).toNat - A003107 n

end

end A298949.P4669735295088340617

/-! ## A298949.P3249328786817876243

`A005843(A339371(n))-∑[A238999(n)]`
-/

namespace A298949.P3249328786817876243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339371 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298949.P3249328786817876243

/-! ## A298949.P16624371401339465904

`A003107(n)-A005843(A339372(n))`
-/

namespace A298949.P16624371401339465904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 n - A005843 (A339372 n).toNat

end

end A298949.P16624371401339465904

/-! ## A298949.P17277041482564736547

`∑[A238999(n)]-A005843(A339372(n))`
-/

namespace A298949.P17277041482564736547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005843 (A339372 n).toNat

end

end A298949.P17277041482564736547

/-!
# A298950: Numbers k such that 5*k - 4 is a square.

The programs for A298950, the canonical program `A298950.P17304342276090503532` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298950 has offset 1).

The definition of A298950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298950.P17304342276090503532

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=17, a(4)=25`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298950

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17304342276090503532.Spec : Prop :=
  ∀ n, P17304342276090503532.a n = A298950 (n + 1)

theorem P17304342276090503532.correct : P17304342276090503532.Spec := by
  intro n
  simp only [A298950, Nat.add_sub_cancel]

end A298950

/-! ## A298950.P9338309188343447081

`A036666(n+1)+1`
-/

namespace A298950.P9338309188343447081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + 1

end

end A298950.P9338309188343447081

namespace A298950

/-- `A036666(n+1)+1` -/
def P9338309188343447081.Spec : Prop :=
  ∀ n, P9338309188343447081.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P11270000878767713752

`∑[lcm(2, n)+n]+1`
-/

namespace A298950.P11270000878767713752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298950.P11270000878767713752

namespace A298950

/-- `∑[lcm(2, n)+n]+1` -/
def P11270000878767713752.Spec : Prop :=
  ∀ n, (P11270000878767713752.a n : ℤ) = A298950 (n + 1)

end A298950

/-! ## A298950.P16139700719208661702

`∑[n*(n%2+2)]+1`
-/

namespace A298950.P16139700719208661702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298950.P16139700719208661702

namespace A298950

/-- `∑[n*(n%2+2)]+1` -/
def P16139700719208661702.Spec : Prop :=
  ∀ n, (P16139700719208661702.a n : ℤ) = A298950 (n + 1)

end A298950

/-! ## A298950.P12240793340658419877

`∑[n*(4-gcd(2, n))]+1`
-/

namespace A298950.P12240793340658419877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298950.P12240793340658419877

namespace A298950

/-- `∑[n*(4-gcd(2, n))]+1` -/
def P12240793340658419877.Spec : Prop :=
  ∀ n, P12240793340658419877.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P1098529747029253502

`∑[n*(and(1, n)+2)]+1`
-/

namespace A298950.P1098529747029253502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298950.P1098529747029253502

namespace A298950

/-- `∑[n*(and(1, n)+2)]+1` -/
def P1098529747029253502.Spec : Prop :=
  ∀ n, (P1098529747029253502.a n : ℤ) = A298950 (n + 1)

end A298950

/-! ## A298950.P10946861357187240576

`∑[n*(3-char[2*n])]+1`
-/

namespace A298950.P10946861357187240576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298950.P10946861357187240576

namespace A298950

/-- `∑[n*(3-char[2*n])]+1` -/
def P10946861357187240576.Spec : Prop :=
  ∀ n, P10946861357187240576.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P544821800156644435

`∑[n*(3-a(n-1)%2)]` with `a(0)=1, a(1)=3`
-/

namespace A298950.P544821800156644435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n : ℤ) * (3 - Int.tmod (f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298950.P544821800156644435

namespace A298950

/-- `∑[n*(3-a(n-1)%2)]` -/
def P544821800156644435.Spec : Prop :=
  ∀ n, P544821800156644435.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P2323996780182495617

`∪[A145995(n+1), A273982(n+1)]`
-/

namespace A298950.P2323996780182495617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298950.P2323996780182495617

namespace A298950

/-- `∪[A145995(n+1), A273982(n+1)]` -/
def P2323996780182495617.Spec : Prop :=
  ∀ n, (P2323996780182495617.a n : ℤ) = A298950 (n + 1)

end A298950

/-! ## A298950.P1723633865189823859

`abs(∑[n*A006530(A071044(n))+1]-n)`
-/

namespace A298950.P1723633865189823859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006530 (A071044 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A298950.P1723633865189823859

namespace A298950

/-- `abs(∑[n*A006530(A071044(n))+1]-n)` -/
def P1723633865189823859.Spec : Prop :=
  ∀ n, P1723633865189823859.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P8306876932903443826

`A008812(A047218(n+1))`
-/

namespace A298950.P8306876932903443826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 (A047218 (n + 1)).toNat

end

end A298950.P8306876932903443826

namespace A298950

/-- `A008812(A047218(n+1))` -/
def P8306876932903443826.Spec : Prop :=
  ∀ n, P8306876932903443826.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P16032625004477604460

`A036404(A047209(n+1))`
-/

namespace A298950.P16032625004477604460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (A047209 (n + 1)).toNat

end

end A298950.P16032625004477604460

namespace A298950

/-- `A036404(A047209(n+1))` -/
def P16032625004477604460.Spec : Prop :=
  ∀ n, P16032625004477604460.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P18378804814087227443

`A008812(A004526(n+1)+2*n)`
-/

namespace A298950.P18378804814087227443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 (A004526 (n + 1) + (2 * n : ℤ)).toNat

end

end A298950.P18378804814087227443

namespace A298950

/-- `A008812(A004526(n+1)+2*n)` -/
def P18378804814087227443.Spec : Prop :=
  ∀ n, P18378804814087227443.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P10307045729402185204

`A008807(A146951(n))`
-/

namespace A298950.P10307045729402185204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (A146951 n).toNat

end

end A298950.P10307045729402185204

namespace A298950

/-- `A008807(A146951(n))` -/
def P10307045729402185204.Spec : Prop :=
  ∀ n, P10307045729402185204.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P10949767431636219301

`A069011(A266723(n))`
-/

namespace A298950.P10949767431636219301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (A266723 n).toNat

end

end A298950.P10949767431636219301

namespace A298950

/-- `A069011(A266723(n))` -/
def P10949767431636219301.Spec : Prop :=
  ∀ n, P10949767431636219301.a n = A298950 (n + 1)

end A298950

/-! ## A298950.P6339678817599900476

`A069011(A213037(n)+1+n)`
-/

namespace A298950.P6339678817599900476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (A213037 n + 1 + (n : ℤ)).toNat

end

end A298950.P6339678817599900476

namespace A298950

/-- `A069011(A213037(n)+1+n)` -/
def P6339678817599900476.Spec : Prop :=
  ∀ n, P6339678817599900476.a n = A298950 (n + 1)

end A298950

/-!
# A298952: First put a(n)=0 for all n, then start with a(0) = 1 and add at step n >= 0 the term 1 at position 2*n + a(n).

The programs for A298952, the canonical program `A298952.P8208636552401384692` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298952 has offset 0).

The definition of A298952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298952.P4693290906187533503

`log2(gcd(2, a(floor(n/2))+n))` with `a(0)=1`
-/

namespace A298952.P4693290906187533503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Int.gcd 2 (SequenceMachineLib.roundAway (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℝ))) : ℝ)

end

end A298952.P4693290906187533503

namespace A298952

/-- `log2(gcd(2, a(floor(n/2))+n))` -/
def P4693290906187533503.Spec : Prop :=
  ∀ n, P4693290906187533503.a n = (A298952 n : ℝ)

end A298952

/-! ## A298952.P3874411821254326593

`xor(a(floor(n/2)), char[2*n])` with `a(0)=1`
-/

namespace A298952.P3874411821254326593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a ⌊(n : ℚ) / 2⌋.toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A298952.P3874411821254326593

namespace A298952

/-- `xor(a(floor(n/2)), char[2*n])` -/
def P3874411821254326593.Spec : Prop :=
  ∀ n, (P3874411821254326593.a n : ℤ) = A298952 n

end A298952

/-! ## A298952.P10705627271643996948

`ceil((-2)^(a(floor(n/2))-n))` with `a(0)=1`
-/

namespace A298952.P10705627271643996948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(-2 : ℚ) ^ (a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ) : ℤ)⌉

end

end A298952.P10705627271643996948

namespace A298952

/-- `ceil((-2)^(a(floor(n/2))-n))` -/
def P10705627271643996948.Spec : Prop :=
  ∀ n, P10705627271643996948.a n = A298952 n

end A298952

/-! ## A298952.P8208636552401384692

`(a(floor(n/2))+1+n)%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298952

/-- `(a(floor(n/2))+1+n)%2` -/
def P8208636552401384692.Spec : Prop :=
  ∀ n, (P8208636552401384692.a n : ℤ) = A298952 n

theorem P8208636552401384692.correct : P8208636552401384692.Spec := by
  intro n
  simp only [A298952]

end A298952

/-! ## A298952.P1301788440827633922

`(1-(a(floor(n/2))-n))%2` with `a(0)=1`
-/

namespace A298952.P1301788440827633922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (1 - (a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))) 2

end

end A298952.P1301788440827633922

namespace A298952

/-- `(1-(a(floor(n/2))-n))%2` -/
def P1301788440827633922.Spec : Prop :=
  ∀ n, P1301788440827633922.a n = A298952 n

end A298952

/-! ## A298952.P17955760411490395311

`and(1, a(floor(n/2))+1+n)` with `a(0)=1`
-/

namespace A298952.P17955760411490395311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (a ⌊(n : ℚ) / 2⌋.toNat + 1 + n)

end

end A298952.P17955760411490395311

namespace A298952

/-- `and(1, a(floor(n/2))+1+n)` -/
def P17955760411490395311.Spec : Prop :=
  ∀ n, (P17955760411490395311.a n : ℤ) = A298952 n

theorem P17955760411490395311.correct : P17955760411490395311.Spec := by
  intro n
  simp only [A298952, Nat.add_sub_cancel, A298952.P17955760411490395311.a, A298952.P8208636552401384692.a, SequenceMachineLib.memo_apply]
  try simp

end A298952

/-! ## A298952.P10337514750429158120

`and(1, 1-(a(floor(n/2))-n))` with `a(0)=1`
-/

namespace A298952.P10337514750429158120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (1 - (a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ)))

end

end A298952.P10337514750429158120

namespace A298952

/-- `and(1, 1-(a(floor(n/2))-n))` -/
def P10337514750429158120.Spec : Prop :=
  ∀ n, P10337514750429158120.a n = A298952 n

end A298952

/-! ## A298952.P18403210194083587335

`1-(a(∑[char[2*n]]-1)+n)%2` with `a(0)=1`
-/

namespace A298952.P18403210194083587335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ)) 2

end

end A298952.P18403210194083587335

namespace A298952

/-- `1-(a(∑[char[2*n]]-1)+n)%2` -/
def P18403210194083587335.Spec : Prop :=
  ∀ n, P18403210194083587335.a n = A298952 n

end A298952

/-! ## A298952.P16913638074579351627

`1-and(1, a(∑[char[2*n]]-1)+n)` with `a(0)=1`
-/

namespace A298952.P16913638074579351627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land 1 (a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ))

end

end A298952.P16913638074579351627

namespace A298952

/-- `1-and(1, a(∑[char[2*n]]-1)+n)` -/
def P16913638074579351627.Spec : Prop :=
  ∀ n, P16913638074579351627.a n = A298952 n

end A298952

/-! ## A298952.P976107904489867190

`(a((n-2)/(char[2*n]+1)+1)+1)%2` with `a(0)=1, a(1)=1`
-/

namespace A298952.P976107904489867190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1)).toNat + 1) % 2

end

end A298952.P976107904489867190

namespace A298952

/-- `(a((n-2)/(char[2*n]+1)+1)+1)%2` -/
def P976107904489867190.Spec : Prop :=
  ∀ n, (P976107904489867190.a n : ℤ) = A298952 n

end A298952

/-! ## A298952.P13128444153399690106

`and(1, a((n-2)/(char[2*n]+1)+1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A298952.P13128444153399690106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land 1 (a (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1)).toNat + 1)

end

end A298952.P13128444153399690106

namespace A298952

/-- `and(1, a((n-2)/(char[2*n]+1)+1)+1)` -/
def P13128444153399690106.Spec : Prop :=
  ∀ n, (P13128444153399690106.a n : ℤ) = A298952 n

end A298952

/-! ## A298952.P7505216071552152059

`A059010(n)%2`
-/

namespace A298952.P7505216071552152059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059010 n) 2

end

end A298952.P7505216071552152059

namespace A298952

/-- `A059010(n)%2` -/
def P7505216071552152059.Spec : Prop :=
  ∀ n, P7505216071552152059.a n = A298952 n

end A298952

/-! ## A298952.P4753061823202762005

`log2(gcd(2, A080791(n)))`
-/

namespace A298952.P4753061823202762005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A080791 n) : ℝ)

end

end A298952.P4753061823202762005

namespace A298952

/-- `log2(gcd(2, A080791(n)))` -/
def P4753061823202762005.Spec : Prop :=
  ∀ n, P4753061823202762005.a n = (A298952 n : ℝ)

end A298952

/-! ## A298952.P16751399959625407870

`A008687(n+1)%2`
-/

namespace A298952.P16751399959625407870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008687 (n + 1)) 2

end

end A298952.P16751399959625407870

namespace A298952

/-- `A008687(n+1)%2` -/
def P16751399959625407870.Spec : Prop :=
  ∀ n, P16751399959625407870.a n = A298952 n

end A298952

/-! ## A298952.P14663779157054473317

`A076895(n+1)%2`
-/

namespace A298952.P14663779157054473317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076895 (n + 1)) 2

end

end A298952.P14663779157054473317

namespace A298952

/-- `A076895(n+1)%2` -/
def P14663779157054473317.Spec : Prop :=
  ∀ n, P14663779157054473317.a n = A298952 n

end A298952

/-! ## A298952.P7705814666728403666

`A119476(n+1)%2`
-/

namespace A298952.P7705814666728403666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119476 (n + 1)) 2

end

end A298952.P7705814666728403666

namespace A298952

/-- `A119476(n+1)%2` -/
def P7705814666728403666.Spec : Prop :=
  ∀ n, P7705814666728403666.a n = A298952 n

end A298952

/-!
# A298953: Number of n X n 0..1 arrays with every element equal to 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298953, there is no canonical definition to state claims against.
-/

/-! ## A298953.P4307150597518478223

`A298957(∑[4*n]+1)`
-/

namespace A298953.P4307150597518478223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298953.P4307150597518478223

/-! ## A298953.P1043535627015361375

`A298957(A001844(n))+char[10]`
-/

namespace A298953.P1043535627015361375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298953.P1043535627015361375

/-! ## A298953.P15206775201571072110

`A132272(n)*A298957(A001844(n))`
-/

namespace A298953.P15206775201571072110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 n * A298957 (A001844 n).toNat

end

end A298953.P15206775201571072110

/-! ## A298953.P1541813374386563576

`lcm(A007318(n), A298957(A001844(n)))`
-/

namespace A298953.P1541813374386563576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A298957 (A001844 n).toNat)

end

end A298953.P1541813374386563576

/-! ## A298953.P8285170642892376721

`A007318(∑[n])*A298957(A001844(n))`
-/

namespace A298953.P8285170642892376721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A298957 (A001844 n).toNat

end

end A298953.P8285170642892376721

/-!
# A298954: Number of nX5 0..1 arrays with every element equal to 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298954, there is no canonical definition to state claims against.
-/

/-! ## A298954.P1729917015099292942

`A298957(A374005(n+1))`
-/

namespace A298954.P1729917015099292942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A374005 (n + 1)).toNat

end

end A298954.P1729917015099292942

/-! ## A298954.P16453909302549648103

`A298957(A155212(n)+13)`
-/

namespace A298954.P16453909302549648103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A155212 n + 13).toNat

end

end A298954.P16453909302549648103

/-! ## A298954.P3542480532114310313

`A298957(A056000(n)+15)`
-/

namespace A298954.P3542480532114310313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A056000 n + 15).toNat

end

end A298954.P3542480532114310313

/-! ## A298954.P12003239850066942544

`A298957(eq[7, A066657(n)])`
-/

namespace A298954.P12003239850066942544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298954.P12003239850066942544

/-! ## A298954.P5601811928655421600

`A298957(A166136(n+3)-1)`
-/

namespace A298954.P5601811928655421600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A166136 (n + 3) - 1).toNat

end

end A298954.P5601811928655421600

/-!
# A298955: Number of nX6 0..1 arrays with every element equal to 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298955, there is no canonical definition to state claims against.
-/

/-! ## A298955.P15955103382178190978

`A298957(A374007(n+1))`
-/

namespace A298955.P15955103382178190978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A374007 (n + 1)).toNat

end

end A298955.P15955103382178190978

/-! ## A298955.P6578492447432751305

`A298957(A166136(n+4))`
-/

namespace A298955.P6578492447432751305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A166136 (n + 4)).toNat

end

end A298955.P6578492447432751305

/-! ## A298955.P16322353265065814683

`A298957(A056115(n)+21)`
-/

namespace A298955.P16322353265065814683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A056115 n + 21).toNat

end

end A298955.P16322353265065814683

/-! ## A298955.P16124248314076692748

`A298957(A167499(n+4)+1)`
-/

namespace A298955.P16124248314076692748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A167499 (n + 4) + 1).toNat

end

end A298955.P16124248314076692748

/-! ## A298955.P541589459200266259

`A298957(A000124(n+5)+5)`
-/

namespace A298955.P541589459200266259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A000124 (n + 5) + 5).toNat

end

end A298955.P541589459200266259

/-!
# A298956: Number of n X 7 0..1 arrays with every element equal to 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298956, there is no canonical definition to state claims against.
-/

/-! ## A298956.P6745816976025191570

`A298957(A374008(n+1))`
-/

namespace A298956.P6745816976025191570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A374008 (n + 1)).toNat

end

end A298956.P6745816976025191570

/-! ## A298956.P237096744817162867

`A298957(A167487(n+5))`
-/

namespace A298956.P237096744817162867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A167487 (n + 5)).toNat

end

end A298956.P237096744817162867

/-! ## A298956.P2728171569782620149

`A298957(A056119(n)+28)`
-/

namespace A298956.P2728171569782620149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A056119 n + 28).toNat

end

end A298956.P2728171569782620149

/-! ## A298956.P16677133912496598612

`A298957(eq[11, A066657(n)])`
-/

namespace A298956.P16677133912496598612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298956.P16677133912496598612

/-! ## A298956.P15790529695007996185

`A298957(A167499(n+5)+2)`
-/

namespace A298956.P15790529695007996185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A167499 (n + 5) + 2).toNat

end

end A298956.P15790529695007996185

/-!
# A298958: Number of n X n 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298958, there is no canonical definition to state claims against.
-/

/-! ## A298958.P14558239929692773032

`A298963(∑[4*n]+1)`
-/

namespace A298958.P14558239929692773032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298958.P14558239929692773032

/-! ## A298958.P2215208251638453211

`A298963(A001844(n))+char[13]`
-/

namespace A298958.P2215208251638453211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298958.P2215208251638453211

/-! ## A298958.P1037017949380652751

`A158388(n)*A298963(A001844(n))`
-/

namespace A298958.P1037017949380652751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A298963 (A001844 n).toNat

end

end A298958.P1037017949380652751

/-! ## A298958.P6967615432819351901

`A178487(n)*A298963(A001844(n))`
-/

namespace A298958.P6967615432819351901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n * A298963 (A001844 n).toNat

end

end A298958.P6967615432819351901

/-! ## A298958.P6523375421156331190

`gcd(A025438(n), A298963(A001844(n)))`
-/

namespace A298958.P6523375421156331190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025438 n) (A298963 (A001844 n).toNat)

end

end A298958.P6523375421156331190

/-!
# A298959: Number of nX4 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298959, the canonical program `A298959.P16846404307849039139` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298959 has offset 1).

The definition of A298959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298959.P16846404307849039139

`2*a(n-1)+a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=7, a(4)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298959

/-- `2*a(n-1)+a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P16846404307849039139.Spec : Prop :=
  ∀ n, P16846404307849039139.a n = A298959 (n + 1)

theorem P16846404307849039139.correct : P16846404307849039139.Spec := by
  intro n
  simp only [A298959, Nat.add_sub_cancel]

end A298959

/-! ## A298959.P2344031349180904366

`A298963(∑[n+3]+7)`
-/

namespace A298959.P2344031349180904366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298959.P2344031349180904366

namespace A298959

/-- `A298963(∑[n+3]+7)` -/
def P2344031349180904366.Spec : Prop :=
  ∀ n, P2344031349180904366.a n = A298959 (n + 1)

end A298959

/-! ## A298959.P805681626867267385

`A298963(A052905(n)+9)+char[49]`
-/

namespace A298959.P805681626867267385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298959.P805681626867267385

namespace A298959

/-- `A298963(A052905(n)+9)+char[49]` -/
def P805681626867267385.Spec : Prop :=
  ∀ n, P805681626867267385.a n = A298959 (n + 1)

end A298959

/-! ## A298959.P13407623727330354117

`A298963(A166136(n+2)-2)+char[30]`
-/

namespace A298959.P13407623727330354117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298959.P13407623727330354117

namespace A298959

/-- `A298963(A166136(n+2)-2)+char[30]` -/
def P13407623727330354117.Spec : Prop :=
  ∀ n, P13407623727330354117.a n = A298959 (n + 1)

end A298959

/-! ## A298959.P1973852917384286205

`A298963(A052905(n)+9)%A000108(n+2)`
-/

namespace A298959.P1973852917384286205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298963 (A052905 n + 9).toNat) (A000108 (n + 2))

end

end A298959.P1973852917384286205

namespace A298959

/-- `A298963(A052905(n)+9)%A000108(n+2)` -/
def P1973852917384286205.Spec : Prop :=
  ∀ n, P1973852917384286205.a n = A298959 (n + 1)

end A298959

/-!
# A298960: Number of nX5 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298960, there is no canonical definition to state claims against.
-/

/-! ## A298960.P17386883675205507683

`A298963(A374005(n+1))`
-/

namespace A298960.P17386883675205507683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A374005 (n + 1)).toNat

end

end A298960.P17386883675205507683

/-! ## A298960.P14749804243548219399

`A298963(A167499(n+3))`
-/

namespace A298960.P14749804243548219399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A167499 (n + 3)).toNat

end

end A298960.P14749804243548219399

/-! ## A298960.P6050503783275822008

`A298963(A155212(n)+13)`
-/

namespace A298960.P6050503783275822008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A155212 n + 13).toNat

end

end A298960.P6050503783275822008

/-! ## A298960.P10162184441347269547

`A298963(A056000(n)+15)`
-/

namespace A298960.P10162184441347269547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A056000 n + 15).toNat

end

end A298960.P10162184441347269547

/-!
# A298961: Number of nX6 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298961, there is no canonical definition to state claims against.
-/

/-! ## A298961.P1111764973225451

`A298963(A374007(n+1))`
-/

namespace A298961.P1111764973225451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A374007 (n + 1)).toNat

end

end A298961.P1111764973225451

/-! ## A298961.P7319147883704689295

`A298963(A167499(n+4)+1)`
-/

namespace A298961.P7319147883704689295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A167499 (n + 4) + 1).toNat

end

end A298961.P7319147883704689295

/-! ## A298961.P5290154198191091001

`A298963(A340266(n+4)+4)`
-/

namespace A298961.P5290154198191091001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A340266 (n + 4) + 4).toNat

end

end A298961.P5290154198191091001

/-! ## A298961.P14926936092196838389

`A298963(A133263(n+5)+4)`
-/

namespace A298961.P14926936092196838389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A133263 (n + 5) + 4).toNat

end

end A298961.P14926936092196838389

/-! ## A298961.P4363835440160867244

`A298963(A000124(n+5)+5)`
-/

namespace A298961.P4363835440160867244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A000124 (n + 5) + 5).toNat

end

end A298961.P4363835440160867244

/-!
# A298962: Number of nX7 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298962, there is no canonical definition to state claims against.
-/

/-! ## A298962.P11531583788234613636

`A298963(A374008(n+1))`
-/

namespace A298962.P11531583788234613636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A374008 (n + 1)).toNat

end

end A298962.P11531583788234613636

/-! ## A298962.P8255707094809273851

`A298963(A056119(n)+28)`
-/

namespace A298962.P8255707094809273851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A056119 n + 28).toNat

end

end A298962.P8255707094809273851

/-! ## A298962.P14744048682759127900

`A298963(A167499(n+5)+2)`
-/

namespace A298962.P14744048682759127900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A167499 (n + 5) + 2).toNat

end

end A298962.P14744048682759127900

/-! ## A298962.P6205824761886361134

`A298963(A167614(n+5)+4)`
-/

namespace A298962.P6205824761886361134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A167614 (n + 5) + 4).toNat

end

end A298962.P6205824761886361134

/-! ## A298962.P2742921239323424223

`A298963(A133263(n+6)+5)`
-/

namespace A298962.P2742921239323424223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298963 (A133263 (n + 6) + 5).toNat

end

end A298962.P2742921239323424223

/-!
# A298963: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298963, there is no canonical definition to state claims against.
-/

/-! ## A298963.P2345028884655568815

`A316176(A001263(n+1))%10`
-/

namespace A298963.P2345028884655568815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316176 (A001263 (n + 1)).toNat) 10

end

end A298963.P2345028884655568815

/-! ## A298963.P4796943355153125406

`A298902(n+1)+A298902(A298902(n+1)!)`
-/

namespace A298963.P4796943355153125406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (n + 1) + A298902 (Nat.factorial (A298902 (n + 1)).toNat)

end

end A298963.P4796943355153125406

/-! ## A298963.P9885782888534348493

`A165597(A180760(n+1))+A000122(A339114(2*n+3))`
-/

namespace A298963.P9885782888534348493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A180760 (n + 1)).toNat + A000122 (A339114 (2 * n + 3)).toNat

end

end A298963.P9885782888534348493

/-! ## A298963.P11165700300491353506

`A165597(A180760(n+1)%A220485(n))`
-/

namespace A298963.P11165700300491353506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (Int.tmod (A180760 (n + 1)) (A220485 n)).toNat

end

end A298963.P11165700300491353506

/-! ## A298963.P8650751795701037979

`A298957(A034454(n+1)²+1)+A298957(n+1)`
-/

namespace A298963.P8650751795701037979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (A034454 (n + 1) ^ 2 + 1).toNat + A298957 (n + 1)

end

end A298963.P8650751795701037979

/-!
# A298964: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298964, there is no canonical definition to state claims against.
-/

/-! ## A298964.P15301006564754052381

`A298970(∑[4*n]+1)`
-/

namespace A298964.P15301006564754052381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298964.P15301006564754052381

/-! ## A298964.P9844444265246140486

`gcd(A000038(n), A298970(A001844(n)))`
-/

namespace A298964.P9844444265246140486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298970 (A001844 n).toNat)

end

end A298964.P9844444265246140486

/-! ## A298964.P9354728228582329712

`A298970(A001844(n))+char[A106839(n)]`
-/

namespace A298964.P9354728228582329712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298964.P9354728228582329712

/-! ## A298964.P8678897321510857869

`char[A001222(n+1)]*A298970(A001844(n))`
-/

namespace A298964.P8678897321510857869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A298970 (A001844 n).toNat

end

end A298964.P8678897321510857869

/-! ## A298964.P4327431419780484334

`A298970(A001844(n))^gcd(3, A000040(n+2))`
-/

namespace A298964.P4327431419780484334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A001844 n).toNat ^ Int.gcd 3 (A000040 (n + 2))

end

end A298964.P4327431419780484334

/-!
# A298965: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298965, there is no canonical definition to state claims against.
-/

/-! ## A298965.P3623215913093994450

`A298970(∑[n+2]+4)`
-/

namespace A298965.P3623215913093994450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298965.P3623215913093994450

/-! ## A298965.P14563493153299832824

`A298970(A167614(n+1))+A025469(n)`
-/

namespace A298965.P14563493153299832824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A167614 (n + 1)).toNat + A025469 n

end

end A298965.P14563493153299832824

/-! ## A298965.P1942186720966961992

`A298970(A167614(n+1))+A178780(n)`
-/

namespace A298965.P1942186720966961992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A167614 (n + 1)).toNat + A178780 n

end

end A298965.P1942186720966961992

/-! ## A298965.P14820304328786427791

`lcm(A033999(n), A298970(A167614(n+1)))`
-/

namespace A298965.P14820304328786427791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298970 (A167614 (n + 1)).toNat)

end

end A298965.P14820304328786427791

/-! ## A298965.P15064284462354065744

`A298970(A167614(n+1))+A238403(n+1)`
-/

namespace A298965.P15064284462354065744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A167614 (n + 1)).toNat + A238403 (n + 1)

end

end A298965.P15064284462354065744

/-!
# A298966: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298966, there is no canonical definition to state claims against.
-/

/-! ## A298966.P7108789654659826272

`A298970(A374004(n+1))`
-/

namespace A298966.P7108789654659826272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A374004 (n + 1)).toNat

end

end A298966.P7108789654659826272

/-! ## A298966.P9162371642602677645

`A298970(A052905(n)+9)`
-/

namespace A298966.P9162371642602677645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A052905 n + 9).toNat

end

end A298966.P9162371642602677645

/-! ## A298966.P8519558179881295494

`A298970(A167614(n+2)+1)`
-/

namespace A298966.P8519558179881295494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A167614 (n + 2) + 1).toNat

end

end A298966.P8519558179881295494

/-! ## A298966.P1209595540095150775

`A298970(Δ[A264443(n)-n²])`
-/

namespace A298966.P1209595540095150775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (f1 (n + 1) - f1 n).toNat

end

end A298966.P1209595540095150775

/-! ## A298966.P6056215374883175912

`A298970(A141214(n+1))`
-/

namespace A298966.P6056215374883175912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A141214 (n + 1)).toNat

end

end A298966.P6056215374883175912

/-!
# A298967: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298967, there is no canonical definition to state claims against.
-/

/-! ## A298967.P412496345847906294

`A298970(A374005(n+1))`
-/

namespace A298967.P412496345847906294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A374005 (n + 1)).toNat

end

end A298967.P412496345847906294

/-! ## A298967.P7577609968229899023

`A298970(A056000(n)+15)`
-/

namespace A298967.P7577609968229899023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A056000 n + 15).toNat

end

end A298967.P7577609968229899023

/-! ## A298967.P10043916725517497336

`A298970(eq[6, A131818(n+1)])`
-/

namespace A298967.P10043916725517497336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298967.P10043916725517497336

/-! ## A298967.P5551270312321583770

`A298970(A000124(n+6)-6-A005408(n))`
-/

namespace A298967.P5551270312321583770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A000124 (n + 6) - 6 - A005408 n).toNat

end

end A298967.P5551270312321583770

/-! ## A298967.P4765666290570611775

`A298970(Δ[A264443(n)])`
-/

namespace A298967.P4765666290570611775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (f1 (n + 1) - f1 n).toNat

end

end A298967.P4765666290570611775

/-!
# A298968: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298968, there is no canonical definition to state claims against.
-/

/-! ## A298968.P14414456073915920287

`A298970(A374007(n+1))`
-/

namespace A298968.P14414456073915920287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A374007 (n + 1)).toNat

end

end A298968.P14414456073915920287

/-! ## A298968.P4983906030080267320

`A298970(eq[7, A131818(n+1)])`
-/

namespace A298968.P4983906030080267320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298968.P4983906030080267320

/-! ## A298968.P11087540261588021110

`A298970(eq[3, A219347(n)])`
-/

namespace A298968.P11087540261588021110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298968.P11087540261588021110

/-! ## A298968.P1943434756602599775

`A298970(eq[5, A193592(n)])`
-/

namespace A298968.P1943434756602599775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298968.P1943434756602599775

/-! ## A298968.P613906090591636546

`A298970(eq[6, A200370(n+1)])`
-/

namespace A298968.P613906090591636546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298968.P613906090591636546

/-!
# A298969: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298969, there is no canonical definition to state claims against.
-/

/-! ## A298969.P2975273878504887765

`A298970(A374008(n+1))`
-/

namespace A298969.P2975273878504887765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A374008 (n + 1)).toNat

end

end A298969.P2975273878504887765

/-! ## A298969.P6322501048704446007

`A298970(eq[11, A066657(n)])`
-/

namespace A298969.P6322501048704446007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298969.P6322501048704446007

/-! ## A298969.P13693902900626546096

`A298970(A000124(n+6)+6)`
-/

namespace A298969.P13693902900626546096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (A000124 (n + 6) + 6).toNat

end

end A298969.P13693902900626546096

/-! ## A298969.P7830001653386987008

`A298970(eq[8, A131818(n+1)])`
-/

namespace A298969.P7830001653386987008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298969.P7830001653386987008

/-! ## A298969.P12372220041547872209

`A298970(eq[4, A219347(n)])`
-/

namespace A298969.P12372220041547872209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298969.P12372220041547872209

/-!
# A298970: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298970, there is no canonical definition to state claims against.
-/

/-! ## A298970.P14429291300119266478

`A239904(A299740(n+1))+1`
-/

namespace A298970.P14429291300119266478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 (A299740 (n + 1)).toNat + 1

end

end A298970.P14429291300119266478

/-! ## A298970.P3146636719916424350

`A299740(n+1)-A151795(A099594(n))`
-/

namespace A298970.P3146636719916424350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (n + 1) - A151795 (A099594 n).toNat

end

end A298970.P3146636719916424350

/-! ## A298970.P6940175084577830513

`A299740(n+1)-A054911(A299905(n))`
-/

namespace A298970.P6940175084577830513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (n + 1) - A054911 (A299905 n).toNat

end

end A298970.P6940175084577830513

/-! ## A298970.P2115777537851741603

`A299740(n+1)-A342770(A001263(n+1))`
-/

namespace A298970.P2115777537851741603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299740 (n + 1) - A342770 (A001263 (n + 1)).toNat

end

end A298970.P2115777537851741603

/-! ## A298970.P10782337059142475103

`A255408(A305523(n+1))`
-/

namespace A298970.P10782337059142475103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A305523 (n + 1)).toNat

end

end A298970.P10782337059142475103

/-!
# A298971: Number of compositions of n that are proper powers of Lyndon words.

The programs for A298971, the canonical program `A298971.P5502893336547545168` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298971 has offset 1).

The definition of A298971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, A059966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A298971.P5502893336547545168

`A008965(n+1)-A059966(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A298971

/-- `A008965(n+1)-A059966(n+1)` -/
def P5502893336547545168.Spec : Prop :=
  ∀ n, P5502893336547545168.a n = A298971 (n + 1)

theorem P5502893336547545168.correct : P5502893336547545168.Spec := by
  intro n
  simp only [A298971, Nat.add_sub_cancel]

end A298971

/-! ## A298971.P16809525006516967999

`A066656(n+1)+A057428(n)`
-/

namespace A298971.P16809525006516967999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 (n + 1) + A057428 n

end

end A298971.P16809525006516967999

namespace A298971

/-- `A066656(n+1)+A057428(n)` -/
def P16809525006516967999.Spec : Prop :=
  ∀ n, P16809525006516967999.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P898058701470566667

`A066656(n+1)-A057427(n)`
-/

namespace A298971.P898058701470566667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 (n + 1) - A057427 n

end

end A298971.P898058701470566667

namespace A298971

/-- `A066656(n+1)-A057427(n)` -/
def P898058701470566667.Spec : Prop :=
  ∀ n, P898058701470566667.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P2984262821727407448

`A066656(n+1)+A000007(n)-1`
-/

namespace A298971.P2984262821727407448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 (n + 1) + A000007 n - 1

end

end A298971.P2984262821727407448

namespace A298971

/-- `A066656(n+1)+A000007(n)-1` -/
def P2984262821727407448.Spec : Prop :=
  ∀ n, P2984262821727407448.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P1396067940094622580

`A066656(n+1)-A020639(A000010(n+2))+1`
-/

namespace A298971.P1396067940094622580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 (n + 1) - A020639 (A000010 (n + 2)).toNat + 1

end

end A298971.P1396067940094622580

namespace A298971

/-- `A066656(n+1)-A020639(A000010(n+2))+1` -/
def P1396067940094622580.Spec : Prop :=
  ∀ n, P1396067940094622580.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P13677680783476809822

`A052823(n+1)+1-A059966(n+1)`
-/

namespace A298971.P13677680783476809822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) + 1 - A059966 (n + 1)

end

end A298971.P13677680783476809822

namespace A298971

/-- `A052823(n+1)+1-A059966(n+1)` -/
def P13677680783476809822.Spec : Prop :=
  ∀ n, P13677680783476809822.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P6434166276847667268

`∑{d}[n+1, A008965(#)*A157658((n+1)/#)]`
-/

namespace A298971.P6434166276847667268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008965 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298971.P6434166276847667268

namespace A298971

/-- `∑{d}[n+1, A008965(#)*A157658((n+1)/#)]` -/
def P6434166276847667268.Spec : Prop :=
  ∀ n, P6434166276847667268.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P5037211525680144931

`∑{d}[n+1, A296066(#)*A383034((n+1)/#)]`
-/

namespace A298971.P5037211525680144931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A383034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298971.P5037211525680144931

namespace A298971

/-- `∑{d}[n+1, A296066(#)*A383034((n+1)/#)]` -/
def P5037211525680144931.Spec : Prop :=
  ∀ n, P5037211525680144931.a n = A298971 (n + 1)

end A298971

/-! ## A298971.P7961387107543739377

`Δ[A052825(n+1)]-A059966(n+1)`
-/

namespace A298971.P7961387107543739377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059966 (n + 1)

end

end A298971.P7961387107543739377

namespace A298971

/-- `Δ[A052825(n+1)]-A059966(n+1)` -/
def P7961387107543739377.Spec : Prop :=
  ∀ n, P7961387107543739377.a n = A298971 (n + 1)

end A298971

/-!
# A298972: Number of positive integers k < n such that n occurs in the Reverse-and-Add trajectory of k.

The programs for A298972, there is no canonical definition to state claims against.
-/

/-! ## A298972.P15598012049884889253

`A244569(n)-1`
-/

namespace A298972.P15598012049884889253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n - 1

end

end A298972.P15598012049884889253

/-! ## A298972.P6986616360352058843

`log2(2^A244569(C(n, n+2)+n)/2)`
-/

namespace A298972.P6986616360352058843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 : ℚ) ^ (A244569 (Nat.choose n (n + 2) + n) : ℤ) / 2 : ℝ)

end

end A298972.P6986616360352058843

/-! ## A298972.P6233866449082618819

`A000401(A244569(n))`
-/

namespace A298972.P6233866449082618819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A244569 n).toNat

end

end A298972.P6233866449082618819

/-! ## A298972.P18003182807249621597

`A071538(A244569(n)²)`
-/

namespace A298972.P18003182807249621597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A244569 n ^ 2).toNat

end

end A298972.P18003182807249621597

/-! ## A298972.P11249770709889122287

`A088226(A244569(n)²)`
-/

namespace A298972.P11249770709889122287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A244569 n ^ 2).toNat

end

end A298972.P11249770709889122287

/-! ## A298972.P11160388972513667334

`A259361(A244569(n)²)`
-/

namespace A298972.P11160388972513667334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A244569 n ^ 2).toNat

end

end A298972.P11160388972513667334

/-! ## A298972.P12300394847052292650

`A023444(A244569(n)+1)`
-/

namespace A298972.P12300394847052292650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A244569 n + 1).toNat

end

end A298972.P12300394847052292650

/-! ## A298972.P1078364152053024536

`A140106(2*A244569(n))`
-/

namespace A298972.P1078364152053024536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A244569 n).toNat

end

end A298972.P1078364152053024536

/-! ## A298972.P13668456827005682756

`A070198(n)%A244569(n)`
-/

namespace A298972.P13668456827005682756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A244569 n)

end

end A298972.P13668456827005682756

/-! ## A298972.P12671639320174938289

`A198277(n)%A244569(n)`
-/

namespace A298972.P12671639320174938289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A244569 n)

end

end A298972.P12671639320174938289

/-!
# A298973: Squarefree primitive abundant numbers (first definition: having only deficient proper divisors).

The programs for A298973, there is no canonical definition to state claims against.
-/

/-! ## A298973.P3572769257355240090

`∩[A006039(n+1), A302573(n+1)]`
-/

namespace A298973.P3572769257355240090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P3572769257355240090

/-! ## A298973.P9917510227355669148

`∩[A071395(n+1), A302573(n+1)]`
-/

namespace A298973.P9917510227355669148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P9917510227355669148

/-! ## A298973.P8940421930588790085

`∩[A302573(n+1), A376881(n+1)]`
-/

namespace A298973.P8940421930588790085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P8940421930588790085

/-! ## A298973.P12098547581188324544

`∩[A180332(n+1), A302573(n+1)]`
-/

namespace A298973.P12098547581188324544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P12098547581188324544

/-! ## A298973.P14991380636478862666

`∩[A006039(n+1), A249242(n+1)]`
-/

namespace A298973.P14991380636478862666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P14991380636478862666

/-! ## A298973.P13214225720208032471

`∩[A071395(n+1), A249242(n+1)]`
-/

namespace A298973.P13214225720208032471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P13214225720208032471

/-! ## A298973.P7701028456541219350

`∩[A249242(n+1), A302573(n+1)]`
-/

namespace A298973.P7701028456541219350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P7701028456541219350

/-! ## A298973.P8976540576493367457

`∩[A249242(n+1), A372298(n+1)]`
-/

namespace A298973.P8976540576493367457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P8976540576493367457

/-! ## A298973.P10974074987035420299

`∩[A249242(n+1), A376881(n+1)]`
-/

namespace A298973.P10974074987035420299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P10974074987035420299

/-! ## A298973.P18416798827945086871

`∩[A302573(n+1), A387712(n+1)]`
-/

namespace A298973.P18416798827945086871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P18416798827945086871

/-! ## A298973.P16960976332634676558

`∩[A372298(n+1), A387712(n+1)]`
-/

namespace A298973.P16960976332634676558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P16960976332634676558

/-! ## A298973.P2769754627601153426

`∩[A180332(n+1), A249242(n+1)]`
-/

namespace A298973.P2769754627601153426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P2769754627601153426

/-! ## A298973.P8222981495025243140

`∩[A006039(n+1), A302574(n+1)]`
-/

namespace A298973.P8222981495025243140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P8222981495025243140

/-! ## A298973.P14697718451520091965

`∩[A071395(n+1), A302574(n+1)]`
-/

namespace A298973.P14697718451520091965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P14697718451520091965

/-! ## A298973.P4843347152550660556

`∩[A302574(n+1), A376881(n+1)]`
-/

namespace A298973.P4843347152550660556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P4843347152550660556

/-! ## A298973.P11137733739118106187

`∩[A302573(n+1), A357696(n+1)]`
-/

namespace A298973.P11137733739118106187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P11137733739118106187

/-! ## A298973.P11733907009101802615

`∩[A357696(n+1), A372298(n+1)]`
-/

namespace A298973.P11733907009101802615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P11733907009101802615

/-! ## A298973.P3722653183582765102

`∩[A091191(n+1), A302573(n+1)]`
-/

namespace A298973.P3722653183582765102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P3722653183582765102

/-! ## A298973.P9245125224084790887

`∩[A180332(n+1), A302574(n+1)]`
-/

namespace A298973.P9245125224084790887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P9245125224084790887

/-! ## A298973.P12864331117601130389

`∩[A006039(n+1), A087248(n+1)]`
-/

namespace A298973.P12864331117601130389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298973.P12864331117601130389

/-!
# A298976: Base-6 complementary numbers: n equals the product of the 6 complement (6-d) of its base-6 digits d.

The programs for A298976, there is no canonical definition to state claims against.
-/

/-! ## A298976.P3283790159842431725

`(n+1)*∑[A226629(A088327(n+1))]`
-/

namespace A298976.P3283790159842431725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (A088327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298976.P3283790159842431725

/-! ## A298976.P4768666940426932820

`A094820(3*n+1)*A275964(A205466(n+1))`
-/

namespace A298976.P4768666940426932820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (3 * n + 1) * A275964 (A205466 (n + 1)).toNat

end

end A298976.P4768666940426932820

/-!
# A298977: Base-7 complementary numbers: n equals the product of the 7 complement (7-d) of its base-7 digits d.

The programs for A298977, there is no canonical definition to state claims against.
-/

/-! ## A298977.P6853454166346299257

`record[12*A166661(n+1)]`
-/

namespace A298977.P6853454166346299257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A166661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298977.P6853454166346299257

/-! ## A298977.P9535798138369175374

`record[12*∏{d}[n+1, 3*A120007(#)+1]]`
-/

namespace A298977.P9535798138369175374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∏ d ∈ Nat.divisors (f2 n), (3 * A120007 d + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298977.P9535798138369175374

/-! ## A298977.P3741968071313058291

`12*record[A166661(A089898(n))]`
-/

namespace A298977.P3741968071313058291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (A089898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298977.P3741968071313058291

/-! ## A298977.P12343182740936315963

`12*record[A166661(A203814(n))]`
-/

namespace A298977.P12343182740936315963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298977.P12343182740936315963

/-! ## A298977.P18339994645045655086

`12*record[A166661(A052938(2*n))]`
-/

namespace A298977.P18339994645045655086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298977.P18339994645045655086

/-!
# A298980: Numbers n such that there exists an integer k < n for which the significant decimal digits of k/n (i.e., neglecting leading zeros) are those of n.

The programs for A298980, there is no canonical definition to state claims against.
-/

/-! ## A298980.P257832323827605385

`eq[1, char[A298232(n+2)]]`
-/

namespace A298980.P257832323827605385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298232 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298980.P257832323827605385

/-! ## A298980.P13278885914369089453

`lt[0, A298982(n+1)]+1`
-/

namespace A298980.P13278885914369089453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A298980.P13278885914369089453

/-! ## A298980.P5846935149988158652

`eq[1, A034807(a(A298982(n)))]` with `a(0)=0`
-/

namespace A298980.P5846935149988158652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A034807 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P5846935149988158652

/-! ## A298980.P553774103269159455

`eq[2, A001285(a(A298982(n)))]` with `a(0)=0`
-/

namespace A298980.P553774103269159455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001285 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P553774103269159455

/-! ## A298980.P15320791029782087069

`eq[2, A001316(a(A298982(n)))]` with `a(0)=0`
-/

namespace A298980.P15320791029782087069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001316 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P15320791029782087069

/-! ## A298980.P2607324049975817468

`eq[0, A003415(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298980.P2607324049975817468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A003415 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P2607324049975817468

/-! ## A298980.P158478831901350552

`eq[1, A000010(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298980.P158478831901350552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P158478831901350552

/-! ## A298980.P12817090721162839327

`lt[2, A000040(a(A298982(n)))]` with `a(0)=1`
-/

namespace A298980.P12817090721162839327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298980.P12817090721162839327

/-! ## A298980.P5604213789394359269

`eq[1, A000045(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298980.P5604213789394359269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P5604213789394359269

/-! ## A298980.P476151419277632903

`eq[1, A007318(a(A298982(n)))]` with `a(0)=4`
-/

namespace A298980.P476151419277632903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298980.P476151419277632903

/-!
# A298981: Numbers m such that there does not exist an integer k < m for which the initial decimal digits of k/m are m.

The programs for A298981, there is no canonical definition to state claims against.
-/

/-! ## A298981.P17891662372537283158

`eq[2, sqrt(a(A298982(n)))]` with `a(0)=4`
-/

namespace A298981.P17891662372537283158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A298982 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A298981.P17891662372537283158

/-! ## A298981.P4088798075910403232

`eq[0, A298982(n+1)]+1`
-/

namespace A298981.P4088798075910403232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298981.P4088798075910403232

/-! ## A298981.P5163089109409425703

`comp[A298980(n+1)-1]+1`
-/

namespace A298981.P5163089109409425703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298980 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298981.P5163089109409425703

/-! ## A298981.P8944270451648516990

`comp[A298232(n+2)-1]+1`
-/

namespace A298981.P8944270451648516990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298232 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298981.P8944270451648516990

/-! ## A298981.P6223351272538639263

`eq[1, A080880(a(A298982(n)))]` with `a(0)=0`
-/

namespace A298981.P6223351272538639263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A080880 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P6223351272538639263

/-! ## A298981.P16622583435791852702

`eq[1, A276086(a(A298982(n)))]` with `a(0)=0`
-/

namespace A298981.P16622583435791852702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A276086 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P16622583435791852702

/-! ## A298981.P17103494246613628004

`eq[2, A000040(a(A298982(n)))]` with `a(0)=1`
-/

namespace A298981.P17103494246613628004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P17103494246613628004

/-! ## A298981.P1056739397455224328

`eq[2, A000010(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298981.P1056739397455224328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P1056739397455224328

/-! ## A298981.P7301811456858945892

`eq[2, A000045(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298981.P7301811456858945892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P7301811456858945892

/-! ## A298981.P17781586284634663528

`eq[2, A000120(a(A298982(n)))]` with `a(0)=3`
-/

namespace A298981.P17781586284634663528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000120 (f2 (A298982 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298981.P17781586284634663528

/-!
# A298983: Triangle read by rows T(n,k) giving coefficients in expansion of Product_{j=1..n} (1-x^j)^2 mod x^(n+1)-1.

The programs for A298983, there is no canonical definition to state claims against.
-/

/-! ## A298983.P16373577344527237508

`∑[char[∑[n]]]*A282634(n+1)`
-/

namespace A298983.P16373577344527237508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A282634 (n + 1)

end

end A298983.P16373577344527237508

/-! ## A298983.P15394049378788281165

`A002024(n+1)*A054533(A038722(n+1))`
-/

namespace A298983.P15394049378788281165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A054533 (A038722 (n + 1)).toNat

end

end A298983.P15394049378788281165

/-! ## A298983.P14695276457726562972

`A054533(A038722(n+1))*A123578(n+1)`
-/

namespace A298983.P14695276457726562972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A038722 (n + 1)).toNat * A123578 (n + 1)

end

end A298983.P14695276457726562972

/-!
# A298985: a(n) = [x^n] Product_{k>=1} 1/(1 - n*x^k)^k.

The programs for A298985, there is no canonical definition to state claims against.
-/

/-! ## A298985.P906692159524411420

`A247987(A124577(n))`
-/

namespace A298985.P906692159524411420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A124577 n).toNat

end

end A298985.P906692159524411420

/-!
# A298987: a(n) = [x^n] Product_{k>=1} (1 + n*x^k)^k.

The programs for A298987, there is no canonical definition to state claims against.
-/

/-! ## A298987.P3778851866493266070

`A132027(∏{e}[∑{digits}[n, 10^#], #])`
-/

namespace A298987.P3778851866493266070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132027 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A298987.P3778851866493266070

/-! ## A298987.P6398607996236516204

`n²*A102347(a(n-1))` with `a(0)=1`
-/

namespace A298987.P6398607996236516204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) * A102347 (a (n - 1)).toNat

end

end A298987.P6398607996236516204

/-!
# A298988: a(n) = [x^n] Product_{k>=1} 1/(1 + n*x^k)^k.

The programs for A298988, there is no canonical definition to state claims against.
-/

/-! ## A298988.P9695579808740616519

`A292159(A168155(n+2))`
-/

namespace A298988.P9695579808740616519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292159 (A168155 (n + 2)).toNat

end

end A298988.P9695579808740616519

/-!
# A298990: Least number m such that A035026(m) = n.

The programs for A298990, there is no canonical definition to state claims against.
-/

/-! ## A298990.P4123443316085284401

`A085062(A073611(n))`
-/

namespace A298990.P4123443316085284401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A073611 n).toNat

end

end A298990.P4123443316085284401

/-! ## A298990.P2140577320851547493

`A378917(n)-char[1]`
-/

namespace A298990.P2140577320851547493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378917 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298990.P2140577320851547493

/-! ## A298990.P1144353624331864570

`and(A267596(n), A378917(n))`
-/

namespace A298990.P1144353624331864570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267596 n) (A378917 n)

end

end A298990.P1144353624331864570

/-! ## A298990.P14207748300802876339

`and(A267888(n), A378917(n))`
-/

namespace A298990.P14207748300802876339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267888 n) (A378917 n)

end

end A298990.P14207748300802876339

/-! ## A298990.P3291580712021743283

`and(A267890(n), A378917(n))`
-/

namespace A298990.P3291580712021743283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A378917 n)

end

end A298990.P3291580712021743283

/-! ## A298990.P1006190269261656045

`and(A290836(n), A378917(n))`
-/

namespace A298990.P1006190269261656045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290836 n) (A378917 n)

end

end A298990.P1006190269261656045

/-! ## A298990.P6907793721774015437

`xor(A063524(n), A378917(n))`
-/

namespace A298990.P6907793721774015437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A378917 n)

end

end A298990.P6907793721774015437

/-! ## A298990.P1976934244852762078

`xor(A178333(n), A378917(n))`
-/

namespace A298990.P1976934244852762078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178333 n) (A378917 n)

end

end A298990.P1976934244852762078

/-! ## A298990.P18249545926195921347

`and(A233868(n+1), A378917(n))`
-/

namespace A298990.P18249545926195921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233868 (n + 1)) (A378917 n)

end

end A298990.P18249545926195921347

/-! ## A298990.P12257413423893993470

`xor(A084928(n+1), A378917(n))`
-/

namespace A298990.P12257413423893993470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084928 (n + 1)) (A378917 n)

end

end A298990.P12257413423893993470

/-!
# A298991: Indices i in A112058 where records of 17*i - 3*A112058(i)/8 occur.

The programs for A298991, there is no canonical definition to state claims against.
-/

/-! ## A298991.P17138197934311571638

`A195176(A291812(2*or(2, ceil(8*n/3)))-2)`
-/

namespace A298991.P17138197934311571638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (A291812 (2 * Int.lor 2 ⌈8 * ((n : ℚ) / 3)⌉).toNat - 2).toNat

end

end A298991.P17138197934311571638

/-! ## A298991.P9838534954554561450

`A063241(2*n+1)-A055642(A002182(2*n+3))`
-/

namespace A298991.P9838534954554561450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (2 * n + 1) - A055642 (A002182 (2 * n + 3)).toNat

end

end A298991.P9838534954554561450

/-!
# A298992: a(n) = (2*n-3-(-1)^n)*(22*n^2-21*n+5*n*(-1)^n)/96.

The programs for A298992, the canonical program `A298992.P1160914554161029700` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298992 has offset 1).

The definition of A298992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298992.P1160914554161029700

`(n+1)*∑[A257143(n)]-∑[∑[n+1]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A298992

/-- `(n+1)*∑[A257143(n)]-∑[∑[n+1]]` -/
def P1160914554161029700.Spec : Prop :=
  ∀ n, P1160914554161029700.a n = A298992 (n + 1)

theorem P1160914554161029700.correct : P1160914554161029700.Spec := by
  intro n
  simp only [A298992, Nat.add_sub_cancel]

end A298992

/-! ## A298992.P5357246441894840954

`A294286(n+1)+A080838(n+1)`
-/

namespace A298992.P5357246441894840954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294286 (n + 1) + A080838 (n + 1)

end

end A298992.P5357246441894840954

namespace A298992

/-- `A294286(n+1)+A080838(n+1)` -/
def P5357246441894840954.Spec : Prop :=
  ∀ n, P5357246441894840954.a n = A298992 (n + 1)

end A298992

/-! ## A298992.P4888335126881978178

`A080838(n+1)+A294473(n+1)/2`
-/

namespace A298992.P4888335126881978178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080838 (n + 1) : ℚ) + (A294473 (n + 1) : ℚ) / 2

end

end A298992.P4888335126881978178

namespace A298992

/-- `A080838(n+1)+A294473(n+1)/2` -/
def P4888335126881978178.Spec : Prop :=
  ∀ n, P4888335126881978178.a n = (A298992 (n + 1) : ℚ)

end A298992

/-! ## A298992.P1948237725036900905

`(n+1)*A111711(n+1)-A000292(n+1)`
-/

namespace A298992.P1948237725036900905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A111711 (n + 1) - A000292 (n + 1)

end

end A298992.P1948237725036900905

namespace A298992

/-- `(n+1)*A111711(n+1)-A000292(n+1)` -/
def P1948237725036900905.Spec : Prop :=
  ∀ n, P1948237725036900905.a n = A298992 (n + 1)

end A298992

/-! ## A298992.P5171919312137493881

`A080838(n+1)+A006331(n)-A226141(n+1)`
-/

namespace A298992.P5171919312137493881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (n + 1) + (A006331 n - A226141 (n + 1))

end

end A298992.P5171919312137493881

namespace A298992

/-- `A080838(n+1)+A006331(n)-A226141(n+1)` -/
def P5171919312137493881.Spec : Prop :=
  ∀ n, P5171919312137493881.a n = A298992 (n + 1)

end A298992

/-! ## A298992.P2405534630246863554

`A007290(n+1)+(n+1)*∑[A142150(n)]`
-/

namespace A298992.P2405534630246863554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 1) + (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298992.P2405534630246863554

namespace A298992

/-- `A007290(n+1)+(n+1)*∑[A142150(n)]` -/
def P2405534630246863554.Spec : Prop :=
  ∀ n, P2405534630246863554.a n = A298992 (n + 1)

end A298992

/-! ## A298992.P12715159204842646925

`A080838(n+1)+A014682(A294473(n+1))`
-/

namespace A298992.P12715159204842646925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (n + 1) + A014682 (A294473 (n + 1)).toNat

end

end A298992.P12715159204842646925

namespace A298992

/-- `A080838(n+1)+A014682(A294473(n+1))` -/
def P12715159204842646925.Spec : Prop :=
  ∀ n, P12715159204842646925.a n = A298992 (n + 1)

end A298992

/-!
# A298994: Expansion of Product_{n>=1} (1 + (4*x)^n)^(1/2).

The programs for A298994, there is no canonical definition to state claims against.
-/

/-! ## A298994.P9475379246653066613

`A001316(n)*A343204(n)`
-/

namespace A298994.P9475379246653066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A343204 n

end

end A298994.P9475379246653066613

/-! ## A298994.P5824326106575667458

`sqrt(A102376(n))*A343204(n)`
-/

namespace A298994.P5824326106575667458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A343204 n : ℝ)

end

end A298994.P5824326106575667458

/-! ## A298994.P2334273570042434373

`2^A000120(n)*A343204(n)`
-/

namespace A298994.P2334273570042434373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) * (A343204 n : ℚ)

end

end A298994.P2334273570042434373

/-! ## A298994.P2818286670096123829

`A000005(A019565(n))*A343204(n)`
-/

namespace A298994.P2818286670096123829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A343204 n

end

end A298994.P2818286670096123829

/-!
# A298995: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298995, there is no canonical definition to state claims against.
-/

/-! ## A298995.P1348701787363233741

`A299001(∑[4*n]+1)`
-/

namespace A298995.P1348701787363233741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298995.P1348701787363233741

/-! ## A298995.P13089721325247086630

`A299001(A001844(n))+A025469(n)`
-/

namespace A298995.P13089721325247086630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A001844 n).toNat + A025469 n

end

end A298995.P13089721325247086630

/-! ## A298995.P11619631172331564297

`A181937(n)*A299001(A001844(n))`
-/

namespace A298995.P11619631172331564297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A299001 (A001844 n).toNat

end

end A298995.P11619631172331564297

/-! ## A298995.P12400293641012464112

`lcm(A275422(n), A299001(A001844(n)))`
-/

namespace A298995.P12400293641012464112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A275422 n) (A299001 (A001844 n).toNat)

end

end A298995.P12400293641012464112

/-! ## A298995.P6785999872039804454

`or(A028718(n), A299001(A001844(n)))`
-/

namespace A298995.P6785999872039804454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028718 n) (A299001 (A001844 n).toNat)

end

end A298995.P6785999872039804454

/-!
# A298996: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298996, there is no canonical definition to state claims against.
-/

/-! ## A298996.P1897274292780755421

`A299001(∑[n+2]+4)`
-/

namespace A298996.P1897274292780755421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298996.P1897274292780755421

/-! ## A298996.P958102296602140364

`A299746(∑[n+2]+4)`
-/

namespace A298996.P958102296602140364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298996.P958102296602140364

/-! ## A298996.P5658049161542232062

`and(-1, A299001(A167614(n+1)))`
-/

namespace A298996.P5658049161542232062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299001 (A167614 (n + 1)).toNat)

end

end A298996.P5658049161542232062

/-! ## A298996.P2210204342896455654

`A014910(n)*A299001(A167614(n+1))`
-/

namespace A298996.P2210204342896455654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A299001 (A167614 (n + 1)).toNat

end

end A298996.P2210204342896455654

/-! ## A298996.P14079501032132425792

`A299746(A167614(n+1))*A309913(n)`
-/

namespace A298996.P14079501032132425792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A167614 (n + 1)).toNat * A309913 n

end

end A298996.P14079501032132425792

/-!
# A298997: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298997, there is no canonical definition to state claims against.
-/

/-! ## A298997.P1327081376932585767

`A299001(A374004(n+1))`
-/

namespace A298997.P1327081376932585767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A374004 (n + 1)).toNat

end

end A298997.P1327081376932585767

/-! ## A298997.P6717916063835880058

`A299001(A141214(n)+7)`
-/

namespace A298997.P6717916063835880058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A141214 n + 7).toNat

end

end A298997.P6717916063835880058

/-! ## A298997.P10571649520720652974

`A299746(A141214(n)+7)`
-/

namespace A298997.P10571649520720652974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A141214 n + 7).toNat

end

end A298997.P10571649520720652974

/-! ## A298997.P2701449731455141512

`A299746(A052905(n)+9)`
-/

namespace A298997.P2701449731455141512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299746 (A052905 n + 9).toNat

end

end A298997.P2701449731455141512

/-! ## A298997.P16741880950899072826

`A299001(A055999(n)+10)`
-/

namespace A298997.P16741880950899072826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A055999 n + 10).toNat

end

end A298997.P16741880950899072826

/-!
# A298998: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298998, there is no canonical definition to state claims against.
-/

/-! ## A298998.P2109955351020561086

`A299001(A374005(n+1))`
-/

namespace A298998.P2109955351020561086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A374005 (n + 1)).toNat

end

end A298998.P2109955351020561086

/-! ## A298998.P12414436918421716669

`A299001(A167614(n+3)+2)`
-/

namespace A298998.P12414436918421716669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A167614 (n + 3) + 2).toNat

end

end A298998.P12414436918421716669

/-! ## A298998.P11029468584292822442

`A299001(A034856(n+3)+7)`
-/

namespace A298998.P11029468584292822442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A034856 (n + 3) + 7).toNat

end

end A298998.P11029468584292822442

/-! ## A298998.P8087246986003212928

`A299001(eq[6, A131818(n+1)])`
-/

namespace A298998.P8087246986003212928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298998.P8087246986003212928

/-! ## A298998.P7963058123240281659

`A299001(Δ[A264443(n)])`
-/

namespace A298998.P7963058123240281659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (f1 (n + 1) - f1 n).toNat

end

end A298998.P7963058123240281659

/-!
# A298999: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298999, there is no canonical definition to state claims against.
-/

/-! ## A298999.P11634101430817254098

`A299001(A374007(n+1))`
-/

namespace A298999.P11634101430817254098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A374007 (n + 1)).toNat

end

end A298999.P11634101430817254098

/-! ## A298999.P12237833782236417819

`A299001(eq[7, A131818(n+1)])`
-/

namespace A298999.P12237833782236417819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298999.P12237833782236417819

/-! ## A298999.P3761275376011481241

`A299001(A056119(n)+16)`
-/

namespace A298999.P3761275376011481241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A056119 n + 16).toNat

end

end A298999.P3761275376011481241

/-! ## A298999.P17013361198653303582

`A299001(eq[5, A193592(n)])`
-/

namespace A298999.P17013361198653303582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298999.P17013361198653303582

/-! ## A298999.P13931262588422517891

`A299001(A155212(n+2)+3)`
-/

namespace A298999.P13931262588422517891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A155212 (n + 2) + 3).toNat

end

end A298999.P13931262588422517891

