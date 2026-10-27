import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
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

/-!
# A012201: cosh(arctan(arcsin(x)))=1+1/2!*x^2-3/4!*x^4+69/6!*x^6-1159/8!*x^8...

The programs for A012201, there is no canonical definition to state claims against.
-/

/-! ## A012201.P15672587483687985805

`A012194(2*n)`
-/

namespace A012201.P15672587483687985805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012194 (2 * n)

end

end A012201.P15672587483687985805

/-! ## A012201.P13456868919847480607

`or(1, A012194(A005843(n)))`
-/

namespace A012201.P13456868919847480607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012194 (A005843 n).toNat)

end

end A012201.P13456868919847480607

/-! ## A012201.P9215665976428564423

`A025469(n)+A012194(A005843(n))`
-/

namespace A012201.P9215665976428564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A012194 (A005843 n).toNat

end

end A012201.P9215665976428564423

/-! ## A012201.P1931337191183200844

`A012194(A005843(n))/A007318(∑[n])`
-/

namespace A012201.P1931337191183200844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012194 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A012201.P1931337191183200844

/-! ## A012201.P1226414219846960788

`A012194(A005843(n))/(A000041(n)%2)!`
-/

namespace A012201.P1226414219846960788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012194 (A005843 n).toNat : ℚ) / (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℚ)

end

end A012201.P1226414219846960788

/-!
# A012206: sinh(arctan(arctan(x)))=x-3/3!*x^3+49/5!*x^5-1859/7!*x^7+119617/9!*x^9...

The programs for A012206, there is no canonical definition to state claims against.
-/

/-! ## A012206.P12108399949721751844

`A012203(Δ[n²])`
-/

namespace A012206.P12108399949721751844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012206.P12108399949721751844

/-! ## A012206.P2018183167055565872

`or(1, A012203(A005408(n)))`
-/

namespace A012206.P2018183167055565872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (A005408 n).toNat)

end

end A012206.P2018183167055565872

/-! ## A012206.P2714867666030802428

`or(1, A012203(A004277(n)+1))`
-/

namespace A012206.P2714867666030802428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (A004277 n + 1).toNat)

end

end A012206.P2714867666030802428

/-! ## A012206.P5693436733415144727

`or(1, A012203(A005843(n)+1))`
-/

namespace A012206.P5693436733415144727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (A005843 n + 1).toNat)

end

end A012206.P5693436733415144727

/-! ## A012206.P11266031043066114929

`or(1, A012203(or(1, A004277(n))))`
-/

namespace A012206.P11266031043066114929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (Int.lor 1 (A004277 n)).toNat)

end

end A012206.P11266031043066114929

/-!
# A012210: cosh(arctan(arctan(x)))=1+1/2!*x^2-15/4!*x^4+609/6!*x^6-48031/8!*x^8...

The programs for A012210, there is no canonical definition to state claims against.
-/

/-! ## A012210.P430258918439009272

`A012203(2*n)`
-/

namespace A012210.P430258918439009272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012203 (2 * n)

end

end A012210.P430258918439009272

/-! ## A012210.P2438568059040075296

`or(1, A012203(A004277(n)))`
-/

namespace A012210.P2438568059040075296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (A004277 n).toNat)

end

end A012210.P2438568059040075296

/-! ## A012210.P14947026191891917430

`or(1, A012203(A005843(n)))`
-/

namespace A012210.P14947026191891917430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012203 (A005843 n).toNat)

end

end A012210.P14947026191891917430

/-! ## A012210.P82499884330499920

`A012203(A005843(n))+log2(A000041(n²%(n+1)))`
-/

namespace A012210.P82499884330499920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A012203 (A005843 n).toNat : ℝ) + Real.logb 2 (A000041 (n ^ 2 % (n + 1)) : ℝ)

end

end A012210.P82499884330499920

/-! ## A012210.P10156903754097301525

`A012203(A004277(n))%A255015(n+1)`
-/

namespace A012210.P10156903754097301525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012203 (A004277 n).toNat) (A255015 (n + 1))

end

end A012210.P10156903754097301525

/-!
# A012212: Number of squarefree palindromes over {0, 1, 2} of length 2n+1.

The programs for A012212, there is no canonical definition to state claims against.
-/

/-! ## A012212.P8954776665807330765

`A001615(A131571(n+1)+A007978(n+1))`
-/

namespace A012212.P8954776665807330765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A131571 (n + 1) + A007978 (n + 1)).toNat

end

end A012212.P8954776665807330765

/-!
# A012216: sinh(arctan(arcsinh(x)))=x-2/3!*x^3+24/5!*x^5-664/7!*x^7+28416/9!*x^9...

The programs for A012216, there is no canonical definition to state claims against.
-/

/-! ## A012216.P15724070823062467106

`A012213(Δ[n²])`
-/

namespace A012216.P15724070823062467106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012216.P15724070823062467106

/-! ## A012216.P6406972215567950420

`or(n, A012213(A005408(n)))-n`
-/

namespace A012216.P6406972215567950420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A012213 (A005408 n).toNat) - (n : ℤ)

end

end A012216.P6406972215567950420

/-! ## A012216.P8105948134237748459

`or(A000007(n), A012213(A005408(n)))`
-/

namespace A012216.P8105948134237748459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A012213 (A005408 n).toNat)

end

end A012216.P8105948134237748459

/-! ## A012216.P1654735015439791467

`or(A012213(A005408(n)), A151909(n))`
-/

namespace A012216.P1654735015439791467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012213 (A005408 n).toNat) (A151909 n)

end

end A012216.P1654735015439791467

/-! ## A012216.P15626773306252180439

`A012213(A005408(n))^A165476(n²)`
-/

namespace A012216.P15626773306252180439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012213 (A005408 n).toNat : ℚ) ^ (A165476 (n ^ 2) : ℤ)

end

end A012216.P15626773306252180439

/-!
# A012220: cosh(arctan(arcsinh(x)))=1+1/2!*x^2-11/4!*x^4+349/6!*x^6-22007/8!*x^8...

The programs for A012220, there is no canonical definition to state claims against.
-/

/-! ## A012220.P320200154266853500

`A012213(2*n)`
-/

namespace A012220.P320200154266853500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012213 (2 * n)

end

end A012220.P320200154266853500

/-! ## A012220.P12790916369311933994

`or(1, A012213(A005843(n)))`
-/

namespace A012220.P12790916369311933994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012213 (A005843 n).toNat)

end

end A012220.P12790916369311933994

/-! ## A012220.P2304900656492859471

`or(A012213(A005408(n)-1), A151909(n))`
-/

namespace A012220.P2304900656492859471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012213 (A005408 n - 1).toNat) (A151909 n)

end

end A012220.P2304900656492859471

/-! ## A012220.P1978499002482200612

`A012213(A005843(n))/A000108(A151934(n))`
-/

namespace A012220.P1978499002482200612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012213 (A005843 n).toNat : ℚ) / (A000108 (A151934 n).toNat : ℚ)

end

end A012220.P1978499002482200612

/-! ## A012220.P17798607253583717438

`A012213(A005843(n))/A001222(A001359(n+1))`
-/

namespace A012220.P17798607253583717438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012213 (A005843 n).toNat : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A012220.P17798607253583717438

/-!
# A012222: Expansion of e.g.f.: exp(arctan(tanh(x)))=1+x+1/2!*x^2-3/3!*x^3-15/4!*x^4+41/5!*x^5...

The programs for A012222, there is no canonical definition to state claims against.
-/

/-! ## A012222.P6004475707160606889

`A012256(n)%p?[2^n-1]`
-/

namespace A012222.P6004475707160606889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012256 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A012222.P6004475707160606889

/-! ## A012222.P13149832716960140394

`A012256(A008435(n)+n)`
-/

namespace A012222.P13149832716960140394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 (A008435 n + (n : ℤ)).toNat

end

end A012222.P13149832716960140394

/-! ## A012222.P4526235285036298654

`A012256(n*∑[A008435(n)])`
-/

namespace A012222.P4526235285036298654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A012222.P4526235285036298654

/-!
# A012225: sinh(arctan(tanh(x)))=x-3/3!*x^3+41/5!*x^5-1243/7!*x^7+58001/9!*x^9...

The programs for A012225, there is no canonical definition to state claims against.
-/

/-! ## A012225.P18352614304269607507

`A012222(Δ[n²])`
-/

namespace A012225.P18352614304269607507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012225.P18352614304269607507

/-! ## A012225.P2312108227653356636

`or(1, A012222(A005408(n)))`
-/

namespace A012225.P2312108227653356636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (A005408 n).toNat)

end

end A012225.P2312108227653356636

/-! ## A012225.P9376000373597653434

`or(1, A012222(A004277(n)+1))`
-/

namespace A012225.P9376000373597653434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (A004277 n + 1).toNat)

end

end A012225.P9376000373597653434

/-! ## A012225.P12282051088786915639

`or(1, A012222(A005843(n)+1))`
-/

namespace A012225.P12282051088786915639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (A005843 n + 1).toNat)

end

end A012225.P12282051088786915639

/-! ## A012225.P12465837831918441102

`or(1, A012222(or(1, A004277(n))))`
-/

namespace A012225.P12465837831918441102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (Int.lor 1 (A004277 n)).toNat)

end

end A012225.P12465837831918441102

/-!
# A012229: cosh(arctan(tanh(x)))=1+1/2!*x^2-15/4!*x^4+561/6!*x^6-40415/8!*x^8...

The programs for A012229, there is no canonical definition to state claims against.
-/

/-! ## A012229.P13250140974276428604

`A012222(2*n)`
-/

namespace A012229.P13250140974276428604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012222 (2 * n)

end

end A012229.P13250140974276428604

/-! ## A012229.P11530872179884732837

`or(1, A012222(A004277(n)))`
-/

namespace A012229.P11530872179884732837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (A004277 n).toNat)

end

end A012229.P11530872179884732837

/-! ## A012229.P14614136396622957277

`or(1, A012222(A005843(n)))`
-/

namespace A012229.P14614136396622957277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012222 (A005843 n).toNat)

end

end A012229.P14614136396622957277

/-! ## A012229.P3338108188767375000

`A012222(A005843(n))+A000007(n+1)`
-/

namespace A012229.P3338108188767375000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012222 (A005843 n).toNat + A000007 (n + 1)

end

end A012229.P3338108188767375000

/-! ## A012229.P2501252065058077832

`A012222(A005843(n))^(gcd(2, A000010(n+2))²/4)`
-/

namespace A012229.P2501252065058077832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A012222 (A005843 n).toNat : ℝ) ^ ((Int.gcd 2 (A000010 (n + 2)) ^ 2 : ℚ) / 4 : ℝ)

end

end A012229.P2501252065058077832

/-!
# A012231: exp(arctan(arctanh(x)))=1+x+1/2!*x^2+1/3!*x^3+1/4!*x^4+9/5!*x^5...

The programs for A012231, there is no canonical definition to state claims against.
-/

/-! ## A012231.P13315143677741344910

`2-A009260(A024656(n))`
-/

namespace A012231.P13315143677741344910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A009260 (A024656 n).toNat

end

end A012231.P13315143677741344910

/-! ## A012231.P13159673929886108015

`2-A009260(A004881(n+1))`
-/

namespace A012231.P13159673929886108015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A009260 (A004881 (n + 1)).toNat

end

end A012231.P13159673929886108015

/-! ## A012231.P15075182199673853359

`A000005(A179767(n))-A009260(n)`
-/

namespace A012231.P15075182199673853359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A179767 n).toNat - A009260 n

end

end A012231.P15075182199673853359

/-! ## A012231.P16236007495109679214

`A000005(A090152(n+1))-A009260(n)`
-/

namespace A012231.P16236007495109679214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090152 (n + 1)).toNat - A009260 n

end

end A012231.P16236007495109679214

/-! ## A012231.P10017959357652412184

`A360460(A066148(n+1))-A009260(n)`
-/

namespace A012231.P10017959357652412184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360460 (A066148 (n + 1)).toNat - A009260 n

end

end A012231.P10017959357652412184

/-!
# A012234: sinh(arctan(arctanh(x)))=x+1/3!*x^3+9/5!*x^5+281/7!*x^7+13233/9!*x^9...

The programs for A012234, there is no canonical definition to state claims against.
-/

/-! ## A012234.P12753772799133298531

`A012231(Δ[n²])`
-/

namespace A012234.P12753772799133298531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012234.P12753772799133298531

/-! ## A012234.P127315857299288231

`or(1, A012231(A005408(n)))`
-/

namespace A012234.P127315857299288231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (A005408 n).toNat)

end

end A012234.P127315857299288231

/-! ## A012234.P429853005712582753

`or(1, A012231(A004277(n)+1))`
-/

namespace A012234.P429853005712582753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (A004277 n + 1).toNat)

end

end A012234.P429853005712582753

/-! ## A012234.P13214429244199254131

`or(1, A012231(A005843(n)+1))`
-/

namespace A012234.P13214429244199254131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (A005843 n + 1).toNat)

end

end A012234.P13214429244199254131

/-! ## A012234.P8912869686452312377

`or(1, A012231(or(1, A004277(n))))`
-/

namespace A012234.P8912869686452312377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (Int.lor 1 (A004277 n)).toNat)

end

end A012234.P8912869686452312377

/-!
# A012237: arctanh(arctan(arctanh(x)))=x+2/3!*x^3+32/5!*x^5+1168/7!*x^7+80768/9!*x^9...

The programs for A012237, there is no canonical definition to state claims against.
-/

/-! ## A012237.P9890957971078393435

`∑{d}[A005790(n), A005812(n)+#]`
-/

namespace A012237.P9890957971078393435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A005812 n + (d : ℤ))

end

end A012237.P9890957971078393435

/-!
# A012238: cosh(arctan(arctanh(x)))=1+1/2!*x^2+1/4!*x^4+49/6!*x^6+1345/8!*x^8...

The programs for A012238, there is no canonical definition to state claims against.
-/

/-! ## A012238.P12589122717066217412

`A012231(2*n)`
-/

namespace A012238.P12589122717066217412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012231 (2 * n)

end

end A012238.P12589122717066217412

/-! ## A012238.P375499367411401690

`or(1, A012231(A004277(n)))`
-/

namespace A012238.P375499367411401690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (A004277 n).toNat)

end

end A012238.P375499367411401690

/-! ## A012238.P9186589080600329197

`or(1, A012231(A005843(n)))`
-/

namespace A012238.P9186589080600329197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012231 (A005843 n).toNat)

end

end A012238.P9186589080600329197

/-! ## A012238.P6296419415423927701

`lcm(A012231(A005843(n)), A057077(n))`
-/

namespace A012238.P6296419415423927701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A012231 (A005843 n).toNat) (A057077 n)

end

end A012238.P6296419415423927701

/-! ## A012238.P15298454032138677646

`A012231(A005843(n))/A057077(n²)`
-/

namespace A012238.P15298454032138677646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012231 (A005843 n).toNat : ℚ) / (A057077 (n ^ 2) : ℚ)

end

end A012238.P15298454032138677646

/-!
# A012239: sech(arctan(arctanh(x)))=1-1/2!*x^2+5/4!*x^4-109/6!*x^6+2729/8!*x^8...

The programs for A012239, there is no canonical definition to state claims against.
-/

/-! ## A012239.P7765765219888055773

`and(A012115(A012111(n+1)), A012122(n))`
-/

namespace A012239.P7765765219888055773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012115 (A012111 (n + 1)).toNat) (A012122 n)

end

end A012239.P7765765219888055773

/-!
# A012240: -log(cos(tan(x)))=1/2!*x^2+10/4!*x^4+232/6!*x^6+10064/8!*x^8...

The programs for A012240, there is no canonical definition to state claims against.
-/

/-! ## A012240.P2959155153188549582

`record[-A009329(n+2)]`
-/

namespace A012240.P2959155153188549582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009329 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012240.P2959155153188549582

/-! ## A012240.P2086248503671120738

`abs(A009329(2*(n+1)))`
-/

namespace A012240.P2086248503671120738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009329 (2 * (n + 1))|

end

end A012240.P2086248503671120738

/-! ## A012240.P7134734640330941195

`record[A000007(n)-A009329(n)]`
-/

namespace A012240.P7134734640330941195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A009329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012240.P7134734640330941195

/-! ## A012240.P9152198082044158382

`abs(A009387(A103517(n)))`
-/

namespace A012240.P9152198082044158382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009387 (A103517 n).toNat|

end

end A012240.P9152198082044158382

/-!
# A012242: log(cos(tanh(x)))=-1/2!*x^2+6/4!*x^4-72/6!*x^6+1456/8!*x^8...

The programs for A012242, there is no canonical definition to state claims against.
-/

/-! ## A012242.P12772566153959800814

`A009330(2*(n+1))`
-/

namespace A012242.P12772566153959800814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009330 (2 * (n + 1))

end

end A012242.P12772566153959800814

/-!
# A012244: a(n+2) = (2n+3)*a(n+1) + (n+1)^2*a(n), a(0) = 1, a(1) = 1.

The programs for A012244, there is no canonical definition to state claims against.
-/

/-! ## A012244.P12822535578938368712

`n!/2^n*A006139(n)`
-/

namespace A012244.P12822535578938368712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 ^ n : ℚ) * (A006139 n : ℚ)

end

end A012244.P12822535578938368712

/-! ## A012244.P2368831286729840620

`A306800(∑[n+3])`
-/

namespace A012244.P2368831286729840620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A012244.P2368831286729840620

/-! ## A012244.P5251447561904201333

`A054766(n)+A054765(n)`
-/

namespace A012244.P5251447561904201333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054766 n + A054765 n

end

end A012244.P5251447561904201333

/-! ## A012244.P4157888812852127809

`A019581(A028310(n))+A000142(n)`
-/

namespace A012244.P4157888812852127809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019581 (A028310 n).toNat + A000142 n

end

end A012244.P4157888812852127809

/-! ## A012244.P3359896398772027400

`A019581(A028310(n))+Δ[A003422(n)]`
-/

namespace A012244.P3359896398772027400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019581 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A012244.P3359896398772027400

/-! ## A012244.P524292841397179688

`A000142(n)/A000079(n)*A006139(n)`
-/

namespace A012244.P524292841397179688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A006139 n : ℚ)

end

end A012244.P524292841397179688

/-!
# A012245: Characteristic function of factorial numbers; also decimal expansion of Liouville's number or Liouville's constant.

The programs for A012245, the canonical program `A012245.P11587607485183547821` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012245 has offset 1).

The definition of A012245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012245.P9500209482323017973

`char[n!-1]`
-/

namespace A012245.P9500209482323017973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A012245.P9500209482323017973

namespace A012245

/-- `char[n!-1]` -/
def P9500209482323017973.Spec : Prop :=
  ∀ n, (P9500209482323017973.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P15758218408492964684

`char[∑[n*n!]]`
-/

namespace A012245.P15758218408492964684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A012245.P15758218408492964684

namespace A012245

/-- `char[∑[n*n!]]` -/
def P15758218408492964684.Spec : Prop :=
  ∀ n, (P15758218408492964684.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P9321296775766389389

`char[∑[abs(Δ[n!])]]`
-/

namespace A012245.P9321296775766389389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f3 (n + 1) : ℤ) - (f3 n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A012245.P9321296775766389389

namespace A012245

/-- `char[∑[abs(Δ[n!])]]` -/
def P9321296775766389389.Spec : Prop :=
  ∀ n, (P9321296775766389389.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P403372179968261295

`char[∏[n+1]-1]`
-/

namespace A012245.P403372179968261295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A012245.P403372179968261295

namespace A012245

/-- `char[∏[n+1]-1]` -/
def P403372179968261295.Spec : Prop :=
  ∀ n, (P403372179968261295.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P18056812647966174772

`Δ[A084558(n)]`
-/

namespace A012245.P18056812647966174772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012245.P18056812647966174772

namespace A012245

/-- `Δ[A084558(n)]` -/
def P18056812647966174772.Spec : Prop :=
  ∀ n, P18056812647966174772.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P9493532428995251064

`A316341(n+1)`
-/

namespace A012245.P9493532428995251064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (n + 1)

end

end A012245.P9493532428995251064

namespace A012245

/-- `A316341(n+1)` -/
def P9493532428995251064.Spec : Prop :=
  ∀ n, P9493532428995251064.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P2073177359913565478

`and(1, char[A033312(n)])`
-/

namespace A012245.P2073177359913565478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A012245.P2073177359913565478

namespace A012245

/-- `and(1, char[A033312(n)])` -/
def P2073177359913565478.Spec : Prop :=
  ∀ n, (P2073177359913565478.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P14169085099439690704

`round(γ/A275853(n))`
-/

namespace A012245.P14169085099439690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant / (A275853 n : ℝ))

end

end A012245.P14169085099439690704

namespace A012245

/-- `round(γ/A275853(n))` -/
def P14169085099439690704.Spec : Prop :=
  ∀ n, P14169085099439690704.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P3969793658888584301

`round(acot(A034968(n+1)))`
-/

namespace A012245.P3969793658888584301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A034968 (n + 1) : ℝ))

end

end A012245.P3969793658888584301

namespace A012245

/-- `round(acot(A034968(n+1)))` -/
def P3969793658888584301.Spec : Prop :=
  ∀ n, P3969793658888584301.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P14820302034705828585

`C(n+1, A048765(n+1))`
-/

namespace A012245.P14820302034705828585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A048765 (n + 1)).toNat

end

end A012245.P14820302034705828585

namespace A012245

/-- `C(n+1, A048765(n+1))` -/
def P14820302034705828585.Spec : Prop :=
  ∀ n, (P14820302034705828585.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P11587607485183547821

`C(A048764(n+1), n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A012245

/-- `C(A048764(n+1), n+1)` -/
def P11587607485183547821.Spec : Prop :=
  ∀ n, (P11587607485183547821.a n : ℤ) = A012245 (n + 1)

theorem P11587607485183547821.correct : P11587607485183547821.Spec := by
  intro n
  simp only [A012245, Nat.add_sub_cancel]

end A012245

/-! ## A012245.P16689100974228545864

`C(A055770(n+1), n+1)`
-/

namespace A012245.P16689100974228545864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055770 (n + 1)).toNat (n + 1)

end

end A012245.P16689100974228545864

namespace A012245

/-- `C(A055770(n+1), n+1)` -/
def P16689100974228545864.Spec : Prop :=
  ∀ n, (P16689100974228545864.a n : ℤ) = A012245 (n + 1)

end A012245

/-! ## A012245.P9203791662497989489

`round(A073575(n+1)/(2*n+1))`
-/

namespace A012245.P9203791662497989489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073575 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A012245.P9203791662497989489

namespace A012245

/-- `round(A073575(n+1)/(2*n+1))` -/
def P9203791662497989489.Spec : Prop :=
  ∀ n, P9203791662497989489.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P4499987857627813672

`A008683(A034968(n+1)²)`
-/

namespace A012245.P4499987857627813672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A034968 (n + 1) ^ 2).toNat

end

end A012245.P4499987857627813672

namespace A012245

/-- `A008683(A034968(n+1)²)` -/
def P4499987857627813672.Spec : Prop :=
  ∀ n, P4499987857627813672.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P8369871271302720927

`A008683(A275729(n+1)²)`
-/

namespace A012245.P8369871271302720927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A275729 (n + 1) ^ 2).toNat

end

end A012245.P8369871271302720927

namespace A012245

/-- `A008683(A275729(n+1)²)` -/
def P8369871271302720927.Spec : Prop :=
  ∀ n, P8369871271302720927.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P13178450787473426873

`A002262(C(2, A034968(n+1)))`
-/

namespace A012245.P13178450787473426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose 2 (A034968 (n + 1)).toNat)

end

end A012245.P13178450787473426873

namespace A012245

/-- `A002262(C(2, A034968(n+1)))` -/
def P13178450787473426873.Spec : Prop :=
  ∀ n, P13178450787473426873.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P7833472135454343245

`A084558(n+1)-A084558(n)`
-/

namespace A012245.P7833472135454343245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (n + 1) - A084558 n

end

end A012245.P7833472135454343245

namespace A012245

/-- `A084558(n+1)-A084558(n)` -/
def P7833472135454343245.Spec : Prop :=
  ∀ n, P7833472135454343245.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P5761317729882708455

`∑{d}[n+1, A008683(#)*A055881((n+1)/#)]`
-/

namespace A012245.P5761317729882708455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A055881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A012245.P5761317729882708455

namespace A012245

/-- `∑{d}[n+1, A008683(#)*A055881((n+1)/#)]` -/
def P5761317729882708455.Spec : Prop :=
  ∀ n, P5761317729882708455.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P13071026786039334767

`Δ[dr(∑[char[n!]])]`
-/

namespace A012245.P13071026786039334767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A012245.P13071026786039334767

namespace A012245

/-- `Δ[dr(∑[char[n!]])]` -/
def P13071026786039334767.Spec : Prop :=
  ∀ n, P13071026786039334767.a n = A012245 (n + 1)

end A012245

/-! ## A012245.P587247242383688197

`Δ[dr(∑[char[∏[n+1]]])]`
-/

namespace A012245.P587247242383688197
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A012245.P587247242383688197

namespace A012245

/-- `Δ[dr(∑[char[∏[n+1]]])]` -/
def P587247242383688197.Spec : Prop :=
  ∀ n, P587247242383688197.a n = A012245 (n + 1)

end A012245

/-!
# A012247: exp(sinh(arctan(x)))=1+x+1/2!*x^2-3/4!*x^4-4/5!*x^5+21/6!*x^6...

The programs for A012247, there is no canonical definition to state claims against.
-/

/-! ## A012247.P4297186085307907131

`A012255(A032741(3^n))`
-/

namespace A012247.P4297186085307907131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (A032741 (3 ^ n)).toNat

end

end A012247.P4297186085307907131

/-! ## A012247.P3908795651474930238

`A012255(A228912(n)+n)`
-/

namespace A012247.P3908795651474930238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (A228912 n + (n : ℤ)).toNat

end

end A012247.P3908795651474930238

/-! ## A012247.P6282404466806449997

`A012255(n^A250261(n))`
-/

namespace A012247.P6282404466806449997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A012247.P6282404466806449997

/-! ## A012247.P9816464491845068089

`A012255(or(n, A228912(n)))`
-/

namespace A012247.P9816464491845068089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (Int.lor (n : ℤ) (A228912 n)).toNat

end

end A012247.P9816464491845068089

/-! ## A012247.P15944209172344076507

`A012255(n)%p?[A000045(n)]`
-/

namespace A012247.P15944209172344076507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012255 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A012247.P15944209172344076507

/-!
# A012248: Expansion of e.g.f. exp(arcsinh(arcsin(x))).

The programs for A012248, there is no canonical definition to state claims against.
-/

/-! ## A012248.P8107239423604776768

`A008616(C(n, 4)*2^(n-1))`
-/

namespace A012248.P8107239423604776768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((Nat.choose n 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A012248.P8107239423604776768

/-! ## A012248.P11560535330312087964

`A154125(2-A009202(n))`
-/

namespace A012248.P11560535330312087964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (2 - A009202 n).toNat

end

end A012248.P11560535330312087964

/-! ## A012248.P12650898402330169802

`A008616(A052796(n)/3)`
-/

namespace A012248.P12650898402330169802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((A052796 n : ℚ) / 3)).toNat

end

end A012248.P12650898402330169802

/-! ## A012248.P5880119477307502878

`A008616(4*A213432(n))`
-/

namespace A012248.P5880119477307502878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A213432 n).toNat

end

end A012248.P5880119477307502878

/-! ## A012248.P10235891680621446733

`A275735(n!)-A009202(n)`
-/

namespace A012248.P10235891680621446733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (Nat.factorial n) - A009202 n

end

end A012248.P10235891680621446733

/-!
# A012249: Volume of a certain rational polytope whose points with given denominator count certain sets of Standard Tableaux.

The programs for A012249, there is no canonical definition to state claims against.
-/

/-! ## A012249.P12095885508603742385

`A011371(A112934(n+1))+1`
-/

namespace A012249.P12095885508603742385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A112934 (n + 1)).toNat + 1

end

end A012249.P12095885508603742385

/-!
# A012250: a(n) = A012249(2*n) / 2^(2*n-1).

The programs for A012250, there is no canonical definition to state claims against.
-/

/-! ## A012250.P4456997807942807256

`A012249(2*(n+1))/2^(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A012250.P4456997807942807256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012249 (2 * (n + 1)) : ℚ) / (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)

end

end A012250.P4456997807942807256

/-! ## A012250.P8132999978553114482

`A006551(Δ[n²])-A173018(2*(n+1)²)`
-/

namespace A012250.P8132999978553114482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006551 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A173018 (2 * (n + 1) ^ 2)

end

end A012250.P8132999978553114482

/-! ## A012250.P18121968645460186940

`(n+1)*A177042(n)-A173018(2*(n+1)²)`
-/

namespace A012250.P18121968645460186940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A177042 n - A173018 (2 * (n + 1) ^ 2)

end

end A012250.P18121968645460186940

/-! ## A012250.P9367994038668260927

`A123125(2*(n+1)²)-A173018(2*(n+1)²)`
-/

namespace A012250.P9367994038668260927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (2 * (n + 1) ^ 2) - A173018 (2 * (n + 1) ^ 2)

end

end A012250.P9367994038668260927

/-! ## A012250.P10031425251789926245

`A008292(∑[4*n]+1)-A173018(2*(n+1)²)`
-/

namespace A012250.P10031425251789926245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A173018 (2 * (n + 1) ^ 2)

end

end A012250.P10031425251789926245

/-!
# A012251: exp(arcsinh(arctan(x)))=1+x+1/2!*x^2-2/3!*x^3-11/4!*x^4+24/5!*x^5...

The programs for A012251, there is no canonical definition to state claims against.
-/

/-! ## A012251.P17979543308094913005

`A012213(n)%A216902(2*n+3)`
-/

namespace A012251.P17979543308094913005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012213 n) (A216902 (2 * n + 3))

end

end A012251.P17979543308094913005

/-! ## A012251.P3107414429003887721

`A012213(n)+A007814(A083886(n))`
-/

namespace A012251.P3107414429003887721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012213 n + A007814 (A083886 n).toNat

end

end A012251.P3107414429003887721

/-! ## A012251.P13430133327368150206

`A124762(A008998(n))+A012213(n)`
-/

namespace A012251.P13430133327368150206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A008998 n).toNat + A012213 n

end

end A012251.P13430133327368150206

/-!
# A012252: exp(arcsinh(arcsinh(x))) = 1+x+1/2!*x^2-1/3!*x^3-7/4!*x^4+9/5!*x^5...

The programs for A012252, there is no canonical definition to state claims against.
-/

/-! ## A012252.P12636828082827587665

`A282289(A000225(n))+A002019(n)`
-/

namespace A012252.P12636828082827587665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 (A000225 n).toNat + A002019 n

end

end A012252.P12636828082827587665

/-! ## A012252.P10028235124654540934

`A267863(A126392(n))^A057354(n)`
-/

namespace A012252.P10028235124654540934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267863 (A126392 n).toNat : ℚ) ^ (A057354 n : ℤ)

end

end A012252.P10028235124654540934

/-! ## A012252.P8718603172911725481

`A009001(record[A098063(n)]^A007599(n))`
-/

namespace A012252.P8718603172911725481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A007599 n : ℤ))).toNat

end

end A012252.P8718603172911725481

/-!
# A012253: exp(arcsinh(tanh(x))) = 1+x+1/2!*x^2-2/3!*x^3-11/4!*x^4+16/5!*x^5...

The programs for A012253, there is no canonical definition to state claims against.
-/

/-! ## A012253.P1979393405725829846

`A006519(A012231(n))*A012185(n)`
-/

namespace A012253.P1979393405725829846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A012231 n).toNat * A012185 n

end

end A012253.P1979393405725829846

/-! ## A012253.P13666520577762879033

`A012185(n)*A063435(A022629(n))`
-/

namespace A012253.P13666520577762879033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 n * A063435 (A022629 n).toNat

end

end A012253.P13666520577762879033

/-! ## A012253.P11403968635611632376

`A012185(n)%A259934(A001700(n))`
-/

namespace A012253.P11403968635611632376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012185 n) (A259934 (A001700 n).toNat)

end

end A012253.P11403968635611632376

/-! ## A012253.P14042382099584189429

`A244120(A169886(n+1))+A012185(n)`
-/

namespace A012253.P14042382099584189429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244120 (A169886 (n + 1)).toNat + A012185 n

end

end A012253.P14042382099584189429

/-! ## A012253.P13890827824616907520

`A012185(n)/A320001(A068712(n+1))`
-/

namespace A012253.P13890827824616907520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012185 n : ℚ) / (A320001 (A068712 (n + 1)).toNat : ℚ)

end

end A012253.P13890827824616907520

/-!
# A012254: exp(arcsinh(arctanh(x)))=1+x+1/2!*x^2+2/3!*x^3+5/4!*x^4+24/5!*x^5...

The programs for A012254, there is no canonical definition to state claims against.
-/

/-! ## A012254.P16228956071586305217

`A176654(A213091(n))`
-/

namespace A012254.P16228956071586305217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176654 (A213091 n).toNat

end

end A012254.P16228956071586305217

/-!
# A012257: Irregular triangle read by rows: row 0 is {2}; if row n is {r_1, ..., r_k} then row n+1 is {r_k 1's, r_{k-1} 2's, r_{k-2} 3's, etc.}.

The programs for A012257, there is no canonical definition to state claims against.
-/

/-! ## A012257.P15969068046865608622

`A007318(A000005(A287951(n)+5))`
-/

namespace A012257.P15969068046865608622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000005 (A287951 n + 5).toNat).toNat

end

end A012257.P15969068046865608622

/-! ## A012257.P14095613174063345816

`A001221(A118276(32*A161924(n+1)))`
-/

namespace A012257.P14095613174063345816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118276 (32 * A161924 (n + 1)).toNat).toNat

end

end A012257.P14095613174063345816

/-! ## A012257.P9482016009725631284

`A236859(A095661(n)+A008457(n+1))`
-/

namespace A012257.P9482016009725631284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 (A095661 n + A008457 (n + 1)).toNat

end

end A012257.P9482016009725631284

/-! ## A012257.P10527220593233326747

`∏{e}[A000005(A287951(n)+5), A008578(#)]`
-/

namespace A012257.P10527220593233326747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A287951 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p)

end

end A012257.P10527220593233326747

/-!
# A012258: Expansion of e.g.f.: exp(arctanh(arcsin(x)))=1+x+1/2!*x^2+4/3!*x^3+13/4!*x^4+84/5!*x^5...

The programs for A012258, there is no canonical definition to state claims against.
-/

/-! ## A012258.P18046049600189455334

`A012134(n)-A006054(A184954(n))`
-/

namespace A012258.P18046049600189455334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 n - A006054 (A184954 n).toNat

end

end A012258.P18046049600189455334

/-!
# A012259: Expansion of e.g.f. exp(arctanh(tan(x))).

The programs for A012259, there is no canonical definition to state claims against.
-/

/-! ## A012259.P7639885639688246643

`abs(A202038(n))`
-/

namespace A012259.P7639885639688246643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202038 n|

end

end A012259.P7639885639688246643

/-! ## A012259.P12834396597685660036

`gcd(A000038(n), A202038(n))`
-/

namespace A012259.P12834396597685660036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202038 n)

end

end A012259.P12834396597685660036

/-! ## A012259.P1209202548691419412

`lcm(A020985(n), A202038(n))`
-/

namespace A012259.P1209202548691419412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A202038 n)

end

end A012259.P1209202548691419412

/-! ## A012259.P15030823679923567557

`lcm(-A202038(n), A008836(n+1))`
-/

namespace A012259.P15030823679923567557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A202038 n) (A008836 (n + 1))

end

end A012259.P15030823679923567557

/-! ## A012259.P18041170270440753932

`A056594(A002378(n))*A202038(n)`
-/

namespace A012259.P18041170270440753932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002378 n).toNat * A202038 n

end

end A012259.P18041170270440753932

/-!
# A012260: Expansion of e.g.f. exp(arctanh(arctan(x))).

The programs for A012260, there is no canonical definition to state claims against.
-/

/-! ## A012260.P16636902621003053815

`2-A009241(A004870(n+1))`
-/

namespace A012260.P16636902621003053815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A009241 (A004870 (n + 1)).toNat

end

end A012260.P16636902621003053815

/-! ## A012260.P8168537708274699165

`2-A009241(A004881(n+1))`
-/

namespace A012260.P8168537708274699165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A009241 (A004881 (n + 1)).toNat

end

end A012260.P8168537708274699165

/-! ## A012260.P16324901879630158761

`A000005(A037082(n+1))-A009241(n)`
-/

namespace A012260.P16324901879630158761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A037082 (n + 1)).toNat - A009241 n

end

end A012260.P16324901879630158761

/-! ## A012260.P15301589838270143036

`A000005(A128354(n+1))-A009241(n)`
-/

namespace A012260.P15301589838270143036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128354 (n + 1)).toNat - A009241 n

end

end A012260.P15301589838270143036

/-!
# A012263: Expansion of e.g.f. exp(arctanh(arctanh(x))).

The programs for A012263, there is no canonical definition to state claims against.
-/

/-! ## A012263.P17957272893648247298

`or(1, A338623(A012709(n)))`
-/

namespace A012263.P17957272893648247298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A338623 (A012709 n).toNat)

end

end A012263.P17957272893648247298

/-! ## A012263.P3077599416110198604

`or(1, A326305(A232205(n)))`
-/

namespace A012263.P3077599416110198604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326305 (A232205 n).toNat)

end

end A012263.P3077599416110198604

/-! ## A012263.P16304623847153058120

`A333220(A369547(n+1))+1`
-/

namespace A012263.P16304623847153058120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A369547 (n + 1)).toNat + 1

end

end A012263.P16304623847153058120

/-!
# A012264: Number of real roots of x - x^3/3! + x^5/5! - ... + (-1)^n*x^(2n+1)/(2n+1)!.

The programs for A012264, there is no canonical definition to state claims against.
-/

/-! ## A012264.P8164077960573942070

`2*A012265(n)+1`
-/

namespace A012264.P8164077960573942070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012265 n + 1

end

end A012264.P8164077960573942070

/-! ## A012264.P12470055364560505474

`A005408(A012265(n))`
-/

namespace A012264.P12470055364560505474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A012265 n).toNat

end

end A012264.P12470055364560505474

/-! ## A012264.P9801153423260697236

`A004273(A012265(n)+1)`
-/

namespace A012264.P9801153423260697236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A012265 n + 1).toNat

end

end A012264.P9801153423260697236

/-! ## A012264.P7193472376776154244

`A060747(A012265(n)+1)`
-/

namespace A012264.P7193472376776154244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A012265 n + 1).toNat

end

end A012264.P7193472376776154244

/-! ## A012264.P17751496175348345120

`A004442(2*A012265(n))`
-/

namespace A012264.P17751496175348345120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A012265 n).toNat

end

end A012264.P17751496175348345120

/-! ## A012264.P6456261369399321208

`A141310(2*A012265(n))`
-/

namespace A012264.P6456261369399321208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A012265 n).toNat

end

end A012264.P6456261369399321208

/-! ## A012264.P13864035444077003139

`A008619(4*A012265(n))`
-/

namespace A012264.P13864035444077003139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A012265 n).toNat

end

end A012264.P13864035444077003139

/-! ## A012264.P2465905587166011598

`A028242(4*A012265(n))`
-/

namespace A012264.P2465905587166011598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (4 * A012265 n).toNat

end

end A012264.P2465905587166011598

/-! ## A012264.P5133777562497582632

`A008611(6*A012265(n))`
-/

namespace A012264.P5133777562497582632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A012265 n).toNat

end

end A012264.P5133777562497582632

/-! ## A012264.P16740632508298584086

`A006257(A012265(n)+64)`
-/

namespace A012264.P16740632508298584086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A012265 n + 64).toNat

end

end A012264.P16740632508298584086

/-! ## A012264.P932524622067706930

`A006257(or(64, A012265(n)))`
-/

namespace A012264.P932524622067706930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.lor 64 (A012265 n)).toNat

end

end A012264.P932524622067706930

/-! ## A012264.P8377339460808982585

`A006257(xor(64, A012265(n)))`
-/

namespace A012264.P8377339460808982585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.xor 64 (A012265 n)).toNat

end

end A012264.P8377339460808982585

/-! ## A012264.P16474155416761768664

`A001650((A012265(n)+1)²)`
-/

namespace A012264.P16474155416761768664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 ((A012265 n + 1) ^ 2).toNat

end

end A012264.P16474155416761768664

/-! ## A012264.P1488567734734564

`A004277(A012265(n)+1)-1`
-/

namespace A012264.P1488567734734564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A012265 n + 1).toNat - 1

end

end A012264.P1488567734734564

/-! ## A012264.P292460967481077977

`A005843(A012265(n)+1)-1`
-/

namespace A012264.P292460967481077977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A012265 n + 1).toNat - 1

end

end A012264.P292460967481077977

/-! ## A012264.P12045710554691900081

`A004275(A012265(n)+2)-1`
-/

namespace A012264.P12045710554691900081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A012265 n + 2).toNat - 1

end

end A012264.P12045710554691900081

/-! ## A012264.P15429250202398280817

`1-A001489(2*A012265(n))`
-/

namespace A012264.P15429250202398280817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (2 * A012265 n).toNat

end

end A012264.P15429250202398280817

/-! ## A012264.P4172116460960113229

`1-A001057(4*A012265(n))`
-/

namespace A012264.P4172116460960113229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (4 * A012265 n).toNat

end

end A012264.P4172116460960113229

/-!
# A012265: x - x^3/3! + x^5/5! - ... + (-1)^n*x^(2n+1)/(2n+1)! has 2a(n)+1 real roots.

The programs for A012265, there is no canonical definition to state claims against.
-/

/-! ## A012265.P13093613991692664241

`floor(A012264(n)/2)`
-/

namespace A012265.P13093613991692664241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A012264 n : ℚ) / 2⌋

end

end A012265.P13093613991692664241

/-! ## A012265.P10605407807333714881

`(A012264(2*n-n)-1)/2`
-/

namespace A012265.P10605407807333714881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012264 (2 * n - n) - 1 : ℚ) / 2

end

end A012265.P10605407807333714881

/-! ## A012265.P8861311789608074316

`A004524(A012264(n))`
-/

namespace A012265.P8861311789608074316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A012264 n).toNat

end

end A012265.P8861311789608074316

/-! ## A012265.P3591896005579821462

`A064727(A012264(n)²)`
-/

namespace A012265.P3591896005579821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A012264 n ^ 2).toNat

end

end A012265.P3591896005579821462

/-! ## A012265.P1487654070938983652

`A174344(A012264(n)²)`
-/

namespace A012265.P1487654070938983652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A012264 n ^ 2).toNat

end

end A012265.P1487654070938983652

/-! ## A012265.P16574381377843176283

`A268038(A012264(n)²)`
-/

namespace A012265.P16574381377843176283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A012264 n ^ 2).toNat

end

end A012265.P16574381377843176283

/-! ## A012265.P17482322945931679829

`A319571(A012264(n)²)`
-/

namespace A012265.P17482322945931679829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A012264 n ^ 2).toNat

end

end A012265.P17482322945931679829

/-! ## A012265.P17421210923412414064

`A001281(A012264(n)-1)`
-/

namespace A012265.P17421210923412414064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A012264 n - 1).toNat

end

end A012265.P17421210923412414064

/-! ## A012265.P9157440036620667452

`A004525(A012264(n)-1)`
-/

namespace A012265.P9157440036620667452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A012264 n - 1).toNat

end

end A012265.P9157440036620667452

/-! ## A012265.P13619624762350579155

`A004526(A012264(n)-1)`
-/

namespace A012265.P13619624762350579155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A012264 n - 1).toNat

end

end A012265.P13619624762350579155

/-! ## A012265.P13124382681139118542

`A026741(A012264(n)-1)`
-/

namespace A012265.P13124382681139118542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A012264 n - 1).toNat

end

end A012265.P13124382681139118542

/-! ## A012265.P7156367066077557943

`A142150(A012264(n)-1)`
-/

namespace A012265.P7156367066077557943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A012264 n - 1).toNat

end

end A012265.P7156367066077557943

/-! ## A012265.P1004611750972895461

`A002265(2*A012264(n))`
-/

namespace A012265.P1004611750972895461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A012264 n).toNat

end

end A012265.P1004611750972895461

/-! ## A012265.P3215951975134442952

`A008615(3*A012264(n))`
-/

namespace A012265.P3215951975134442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A012264 n).toNat

end

end A012265.P3215951975134442952

/-! ## A012265.P1735823805057960530

`A002265(lcm(2, A012264(n)))`
-/

namespace A012265.P1735823805057960530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A012264 n))

end

end A012265.P1735823805057960530

/-! ## A012265.P3162110370102948077

`A004526(or(1, A012264(n)))`
-/

namespace A012265.P3162110370102948077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A012264 n)).toNat

end

end A012265.P3162110370102948077

/-! ## A012265.P911031976831963486

`A002265(A012264(n)+A012264(n)+1)`
-/

namespace A012265.P911031976831963486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A012264 n + (A012264 n + 1)).toNat

end

end A012265.P911031976831963486

/-! ## A012265.P16551035268876202376

`A002265(A012264(n)-(1-A012264(n)))`
-/

namespace A012265.P16551035268876202376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A012264 n - (1 - A012264 n)).toNat

end

end A012265.P16551035268876202376

/-! ## A012265.P16195664384905537554

`A064727(2*A012264(n)*A012264(n))`
-/

namespace A012265.P16195664384905537554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (2 * A012264 n * A012264 n).toNat

end

end A012265.P16195664384905537554

/-!
# A012275: Expansion of e.g.f. arcsin(exp(x)*log(x+1)).

The programs for A012275, there is no canonical definition to state claims against.
-/

/-! ## A012275.P66098851236466117

`A376427(A163824(n+1))`
-/

namespace A012275.P66098851236466117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376427 (A163824 (n + 1)).toNat

end

end A012275.P66098851236466117

/-! ## A012275.P15173796080778486925

`∑[A025480(A227474(n))]+1`
-/

namespace A012275.P15173796080778486925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A227474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A012275.P15173796080778486925

/-!
# A012278: Expansion of e.g.f. arctanh(exp(x)*log(x+1)).

The programs for A012278, there is no canonical definition to state claims against.
-/

/-! ## A012278.P9341827164425958398

`(A346427(n)+A009321(n))/2`
-/

namespace A012278.P9341827164425958398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346427 n + A009321 n : ℚ) / 2

end

end A012278.P9341827164425958398

/-! ## A012278.P8631967897796901514

`A175126(A346427(n)+A009321(n))`
-/

namespace A012278.P8631967897796901514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A346427 n + A009321 n).toNat

end

end A012278.P8631967897796901514

/-! ## A012278.P2890403013711664562

`A004525(A346427(n)+A009321(n))`
-/

namespace A012278.P2890403013711664562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346427 n + A009321 n).toNat

end

end A012278.P2890403013711664562

/-!
# A012281: Expansion of e.g.f. sin(sin(x) * log(x+1)).

The programs for A012281, there is no canonical definition to state claims against.
-/

/-! ## A012281.P6017401485977905181

`A012285(A051022(n))`
-/

namespace A012281.P6017401485977905181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012285 (A051022 n).toNat

end

end A012281.P6017401485977905181

/-! ## A012281.P13806490595389406957

`A012285(A050783(n+1))`
-/

namespace A012281.P13806490595389406957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012285 (A050783 (n + 1)).toNat

end

end A012281.P13806490595389406957

/-! ## A012281.P17124302275756575215

`A012285(A246617(n)+n)`
-/

namespace A012281.P17124302275756575215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012285 (A246617 n + (n : ℤ)).toNat

end

end A012281.P17124302275756575215

/-! ## A012281.P14820609735785643456

`A012285(n*A136400(n))`
-/

namespace A012281.P14820609735785643456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012285 ((n : ℤ) * A136400 n).toNat

end

end A012281.P14820609735785643456

/-! ## A012281.P13063024472564727872

`A012285(n*A139337(n))`
-/

namespace A012281.P13063024472564727872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012285 ((n : ℤ) * A139337 n).toNat

end

end A012281.P13063024472564727872

/-!
# A012282: Expansion of e.g.f.: tan(sin(x)*log(x+1)).

The programs for A012282, there is no canonical definition to state claims against.
-/

/-! ## A012282.P15767635739014931508

`A012287(n)^((99-n)%90+1)^((n-∑{digits}[n, #])/9)`
-/

namespace A012282.P15767635739014931508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A012287 n : ℝ) ^ ((Int.tmod (99 - (n : ℤ)) 90 + 1 : ℝ) ^ (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9 : ℝ))

end

end A012282.P15767635739014931508

/-! ## A012282.P1036437664323135607

`A012287(A023106(n))`
-/

namespace A012282.P1036437664323135607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012287 (A023106 n).toNat

end

end A012282.P1036437664323135607

/-! ## A012282.P16120535057437066524

`A012287(A051022(n))`
-/

namespace A012282.P16120535057437066524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012287 (A051022 n).toNat

end

end A012282.P16120535057437066524

/-! ## A012282.P12439757936189642886

`A012287(A246605(n))`
-/

namespace A012282.P12439757936189642886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012287 (A246605 n).toNat

end

end A012282.P12439757936189642886

/-! ## A012282.P1374137990314043906

`A012287(A001633(n+1))`
-/

namespace A012282.P1374137990314043906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012287 (A001633 (n + 1)).toNat

end

end A012282.P1374137990314043906

/-!
# A012283: Expansion of e.g.f. arctan(sin(x)*log(x+1)).

The programs for A012283, there is no canonical definition to state claims against.
-/

/-! ## A012283.P532343852181633254

`A012286(n)^((99-n)%90+1)^((n-∑{digits}[n, #])/9)`
-/

namespace A012283.P532343852181633254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A012286 n : ℝ) ^ ((Int.tmod (99 - (n : ℤ)) 90 + 1 : ℝ) ^ (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9 : ℝ))

end

end A012283.P532343852181633254

/-! ## A012283.P412333262160815152

`A012286(A002998(n))`
-/

namespace A012283.P412333262160815152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012286 (A002998 n).toNat

end

end A012283.P412333262160815152

/-! ## A012283.P779921229082999013

`A012286(A051022(n))`
-/

namespace A012283.P779921229082999013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012286 (A051022 n).toNat

end

end A012283.P779921229082999013

/-! ## A012283.P3604216438492404098

`A012286(A050783(n+1))`
-/

namespace A012283.P3604216438492404098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012286 (A050783 (n + 1)).toNat

end

end A012283.P3604216438492404098

/-! ## A012283.P10111636836004936476

`A012286(n^A043562(n))`
-/

namespace A012283.P10111636836004936476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012286 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A012283.P10111636836004936476

/-!
# A012284: Expansion of e.g.f. sinh(sin(x)*log(x+1)).

The programs for A012284, there is no canonical definition to state claims against.
-/

/-! ## A012284.P7395641101050321748

`A007118(n)-A009148(n)`
-/

namespace A012284.P7395641101050321748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007118 n - A009148 n

end

end A012284.P7395641101050321748

/-! ## A012284.P13449435780161534466

`A007118(A004869(n+1))-A012288(n)`
-/

namespace A012284.P13449435780161534466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007118 (A004869 (n + 1)).toNat - A012288 n

end

end A012284.P13449435780161534466

/-! ## A012284.P3631161128787365695

`A007118(A004880(n+1))-A012288(n)`
-/

namespace A012284.P3631161128787365695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007118 (A004880 (n + 1)).toNat - A012288 n

end

end A012284.P3631161128787365695

/-!
# A012290: Expansion of e.g.f. arctan(sin(x)*exp(x)).

The programs for A012290, there is no canonical definition to state claims against.
-/

/-! ## A012290.P17881918094233855450

`n-A233762(A074352(n))`
-/

namespace A012290.P17881918094233855450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A233762 (A074352 n).toNat

end

end A012290.P17881918094233855450

/-! ## A012290.P3836773389618478938

`A012591(n)%A014602(n+4)`
-/

namespace A012290.P3836773389618478938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012591 n) (A014602 (n + 4))

end

end A012290.P3836773389618478938

/-!
# A012292: Expansion of e.g.f. arctanh(sin(x)*exp(x)) = x+2/2!*x^2+4/3!*x^3+24/4!*x^4+180/5!*x^5...

The programs for A012292, there is no canonical definition to state claims against.
-/

/-! ## A012292.P12325660792376374942

`record[Δ[∏{p}[A339033(n), #]]]`
-/

namespace A012292.P12325660792376374942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339033 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012292.P12325660792376374942

/-! ## A012292.P4284713172607153283

`A336583(a(n-1)-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A012292.P4284713172607153283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  A336583 (a (n - 1) - 1).toNat

end

end A012292.P4284713172607153283

/-!
# A012293: Expansion of e.g.f. sec(sin(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+25/4!*x^4+140/5!*x^5...

The programs for A012293, there is no canonical definition to state claims against.
-/

/-! ## A012293.P15708356324250944688

`A140271(A356487(n))-n`
-/

namespace A012293.P15708356324250944688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A356487 n).toNat - (n : ℤ)

end

end A012293.P15708356324250944688

/-!
# A012294: Expansion of e.g.f.: sech(sin(x)*exp(x)).

The programs for A012294, there is no canonical definition to state claims against.
-/

/-! ## A012294.P4509801712829987804

`or(A012595(n), A025444(A012592(n)))`
-/

namespace A012294.P4509801712829987804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012595 n) (A025444 (A012592 n).toNat)

end

end A012294.P4509801712829987804

/-! ## A012294.P15604978244011833824

`or(A012595(n), A025444(A012594(n)))`
-/

namespace A012294.P15604978244011833824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012595 n) (A025444 (A012594 n).toNat)

end

end A012294.P15604978244011833824

/-! ## A012294.P4839934534341626071

`or(A012595(n), A025444(A124542(n)))`
-/

namespace A012294.P4839934534341626071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012595 n) (A025444 (A124542 n).toNat)

end

end A012294.P4839934534341626071

